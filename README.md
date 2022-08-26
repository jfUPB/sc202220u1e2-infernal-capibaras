# Traducción del programa a C/C++ 
### Por: 
### Carolina Arboleda Arboleda (000165774)
### Juan Miguel Betancur Cifuentes (000449518)
### Jerónimo Cano Álvarez (000165440)
### Felipe Roldán Restrepo (000416033)

    MEMORY[18] = 16384 //si al no inicializar MEMORY[18] su contenido automáticamente es 0, esta línea es inútil
    
    while (true)
    {
         if (MEMORY[KEYBOARD] != 0)
         {
              if (MEMORY[KEYBOARD] == MEMORY[MEMORY[0]])
              {
                  while(MEMORY[18] <= 24576)
                  {
                      MEMORY[MEMORY[18]] = 0xFFFF;
                      MEMORY[18] = MEMORY[18] + 1;
                  }
                  MEMORY[18] = 16384    
              } 
              
              if (MEMORY[KEYBOARD] == MEMORY[MEMORY[1]])
              {
                  while(MEMORY[18] <= 24576)
                  {
                      MEMORY[MEMORY[18]] = 0x0000;
                      MEMORY[18] = MEMORY[18] + 1;
                  }
                  MEMORY[18] = 16384     
              } 
         }
    }
