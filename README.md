# Traducción del programa a C/C++ 
### Por: 
### Carolina Arboleda Arboleda (000165774)
### Juan Miguel Betancur Cifuentes (000449518)
### Jerónimo Cano Álvarez (000165440)
### Felipe Roldán Restrepo (000416033)

    
    
    while (true)
    {
         if (MEMORY[KEYBOARD] != 0)
         {
              if (MEMORY[KEYBOARD] == MEMORY[MEMORY[0]])
              {
                  MEMORY[17] = -1; 
              } 
              else if (MEMORY[KEYBOARD] == MEMORY[MEMORY[1]])
              {
                  MEMORY[17] = 0;     
              }
              else
              {
                   continue;
              }
              
              For(MEMORY[18] = 16384; MEMORY[18] < 24576; MEMORY[18]++)
              {
                   MEMORY[MEMORY[18]] = MEMORY[17];
              }
         }
    }
