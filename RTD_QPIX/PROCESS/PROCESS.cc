#include "Qpix/Random.h"
#include "Qpix/ReadG4txt.h"
#include "Qpix/ElectronHandler.h"
#include "Qpix/PixelResponse.h"

#include <algorithm>
#include <ctime>
#include <iostream>


int main(int argc, char *argv[]) 
{  

   int All_Event = atoi(argv[1]);
   int Reset     = atoi(argv[2]);
   double Life_Time = std::stod(argv[3]);

   std::string Input_File        = argv[4];
   std::string Output_File_Truth = argv[5];
   std::string Output_File_Sim   = argv[6];

   clock_t time_req;
   time_req = clock();
   
   double Wvalue, E_vel, DiffusionL, DiffusionT;
   Wvalue = 23.6; // in eV
   E_vel = 1.648; //mm/mus
   DiffusionL = 682.23/1e6;  //mm**2/mus
   DiffusionT = 1315.86/1e6; //mm**2/mus
   

   std::ofstream data_out;
   data_out.open (Output_File_Truth , std::ios::ate);

   // Read out plane size in mm
   int Readout_Dim = 1000;
   int Pix_Size = 4;

   int Start_Time = 0, End_Time = 3200; // buffer

   for (int i = 0; i < All_Event; i++) 
   {   
      int Event = i;
      std::cout << "\rOn Event: " << i << std::flush;

      std::vector<std::vector<int>> data2d;
      //data2d = Qpix::Make_Readout_plane(Readout_Dim, Pix_Size, Reset);
      data2d = Qpix::Make_True_Readout_plane(Readout_Dim, Pix_Size, Reset);

      std::vector<double> Gaussian_Noise;
      int Noise_Vector_Size = 10000;
      Gaussian_Noise = Qpix::Make_Gaussian_Noise(30, Noise_Vector_Size);
      
      std::vector<std::vector<double>> Raw_Data_Vector;
      std::vector<int> Event_Lengths;
      Qpix::DataFileParser2(Input_File, Raw_Data_Vector, Event_Lengths);

      std::vector<std::vector<double>> Specific_Event;
      Specific_Event =  Qpix::GetEventVector(Event ,  Event_Lengths,  Raw_Data_Vector);

      std::vector<Qpix::HIT> Electron_Event_Vector;
      Electron_Event_Vector = Qpix::Diffuser( Wvalue, E_vel, 1000000, DiffusionL, DiffusionT, Specific_Event);

      int Event_Length = Electron_Event_Vector.size();
      std::cout << "The cloud contains " << Event_Length << " electrons" << std::endl;
      std::vector<std::vector<int>> Pixels_Hit;
      Pixels_Hit = Qpix::Find_Unique_Pixels(Pix_Size, Event_Length, Electron_Event_Vector);

      int Pixels_Hit_Len = Pixels_Hit.size();

      std::vector<std::vector<double>> Dead;
      Dead = Qpix::Make_Dead_Time(Readout_Dim, Pix_Size, Reset);

      std::vector<std::vector<double>> RTD;
      
      RTD = Qpix::Make_Truth_Reset_Response( Reset, Pix_Size, E_vel, Event_Length, data2d,  Electron_Event_Vector);

      int RTD_len = RTD.size();
      for (int curr = 0; curr < Pixels_Hit_Len; curr++) 
      { 
            int X_curr = Pixels_Hit[curr][0];
            int Y_curr = Pixels_Hit[curr][1];

            double Delta_T = 0;
            double resetold=0;
            for (int i = 0; i < RTD_len; i++)
            {
               if ( (RTD[i][0] == X_curr) && (RTD[i][1] == Y_curr) )
               {
                  double reset = RTD[i][2];
                  Delta_T = reset - resetold;
                  data_out << Event << ' ' << X_curr << ' ' << Y_curr << ' ' << RTD[i][2] << ' ' << RTD[i][3] << std::endl;
                  resetold = RTD[i][2];

               }
            }
      }
      
      data2d.clear();
      Gaussian_Noise.clear();
      Raw_Data_Vector.clear();
      Event_Lengths.clear();
      Specific_Event.clear();
      Electron_Event_Vector.clear();
      Pixels_Hit.clear();
      RTD.clear();
   }
   

   std::cout << std::endl;
   data_out.close();






   std::cout << "Starting on the SIM" << std::endl;


   //std::ofstream data_out;
   data_out.open (Output_File_Sim , std::ios::ate);

   for (int i = 0; i < All_Event; i++) 
   {   
      int Event = i;
      std::cout << "\rOn Event: " << i << std::flush;

      std::vector<std::vector<int>> data2d;
      data2d = Qpix::Make_Readout_plane(Readout_Dim, Pix_Size, Reset);
      //data2d = Qpix::Make_True_Readout_plane(Readout_Dim, Pix_Size, Reset);

      std::vector<double> Gaussian_Noise;
      int Noise_Vector_Size = 10000;
      Gaussian_Noise = Qpix::Make_Gaussian_Noise(30, Noise_Vector_Size);
      
      std::vector<std::vector<double>> Raw_Data_Vector;
      std::vector<int> Event_Lengths;
      Qpix::DataFileParser2(Input_File, Raw_Data_Vector, Event_Lengths);

      std::vector<std::vector<double>> Specific_Event;
      Specific_Event =  Qpix::GetEventVector(Event ,  Event_Lengths,  Raw_Data_Vector);

      std::vector<Qpix::HIT> Electron_Event_Vector;
      Electron_Event_Vector = Qpix::Diffuser( Wvalue, E_vel, Life_Time, DiffusionL, DiffusionT, Specific_Event);

      int Event_Length = Electron_Event_Vector.size();

      std::vector<std::vector<int>> Pixels_Hit;
      Pixels_Hit = Qpix::Find_Unique_Pixels(Pix_Size, Event_Length, Electron_Event_Vector);

      int Pixels_Hit_Len = Pixels_Hit.size();

      std::vector<std::vector<double>> Dead;
      Dead = Qpix::Make_Dead_Time(Readout_Dim, Pix_Size, Reset);

      std::vector<std::vector<double>> RTD;
      RTD = Qpix::Make_Reset_ResponseD(Reset, Pix_Size, E_vel, Event_Length, Pixels_Hit_Len, Noise_Vector_Size, Start_Time, End_Time,
                               Gaussian_Noise, Pixels_Hit, data2d, Electron_Event_Vector, Dead);

      int RTD_len = RTD.size();
      for (int curr = 0; curr < Pixels_Hit_Len; curr++) 
      { 
            int X_curr = Pixels_Hit[curr][0];
            int Y_curr = Pixels_Hit[curr][1];

            double Delta_T = 0;
            double resetold=0;
            for (int i = 0; i < RTD_len; i++)
            {
               if ( (RTD[i][0] == X_curr) && (RTD[i][1] == Y_curr) )
               {
                  double reset = RTD[i][2];
                  Delta_T = reset - resetold;
                  data_out << Event << ' ' << X_curr << ' ' << Y_curr << ' ' << RTD[i][2] << ' ' << RTD[i][3] << std::endl;
                  resetold = RTD[i][2];

               }
            }
      }
      
      data2d.clear();
      Gaussian_Noise.clear();
      Raw_Data_Vector.clear();
      Event_Lengths.clear();
      Specific_Event.clear();
      Electron_Event_Vector.clear();
      Pixels_Hit.clear();
      RTD.clear();
   }
      

   std::cout << std::endl;
   data_out.close();







   std::cout << "done" << std::endl;

   time_req = clock() - time_req;
   double time = (float)time_req/CLOCKS_PER_SEC;
   std::cout<< "The operation took "<<time<<" Seconds"<<std::endl;
   return 0;
}
