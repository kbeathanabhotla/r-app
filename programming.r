say.hello <- function() {
  print("Hello World")
}

say.hello()

hello.person <- function(name,args...) {
  sprintf(name, args);
}

hello.person("Hello %s %s", "Sai", "Krishna")
