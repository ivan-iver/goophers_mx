# HelloTasks

Ejemplo creado para el meetup de elixir.

**Objetivo:** Crear tareas personalizadas de mix (mix tasks)

## Instalación

- Clona tu repositorio en tu espacio de trabajo local:                                                                                                                      
```console                                                                                                  
$ git clone git@github.com:iver/meetups.git                                                   
```                                                                                                         

- Ve al directorio del proyecto:
```console
$ cd elixir/hello_tasks/
```

- Obten las dependecias y compila
```console
$ mix deps.get && mix compile
```

- Ahora podras ver las tareas personalizadas:
```console
$ mix help
mix                    # Runs the default task (current: "mix run")
mix add.parameter      # Add parameters to database
...
mix hello              # Say hello 
```
