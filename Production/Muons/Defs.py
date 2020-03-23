def GEN_CONFIGURATION( TemplateCONF, ConfigFile, **kwargs):
    
    with open(TemplateCONF) as config, open(ConfigFile, 'w') as configN:
        for line in config:
            if 'PARTICLE' in line:
                try:
                    line = line.replace('PARTICLE', str(kwargs['particle']) )
                except KeyError:
                    print('Template requires something')
                    raise
                
            elif 'OUTPUT_FILE' in line:
                try:
                    line = line.replace('OUTPUT_FILE', str(kwargs['output_file']))
                except KeyError:
                    print('Template requires something')
                    raise

            elif 'N_EVENTS' in line:
                try:
                    line = line.replace('N_EVENTS', str(kwargs['n_events']))
                except KeyError:
                    print('Template requires something')
                    raise
            configN.write(line)
