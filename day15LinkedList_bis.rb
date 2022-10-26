#!/usr/bin/ruby
# lista enlazada

class ListaEnlazada
    attr_accessor :primero, :ultimo # crea get set de primero y ultimo de la lista
  
    def initialize # define elemento vacio de lista enlazada
      @primero = @ultimo = nil
    end
  
    def insertarAlPrincipio(valor)
      nodo = Nodo.new(valor) # creamos nodo nuvo
      nodo.enlace= @primero  # unimos con el primero
      @primero = nodo  # ahora el primero es el nuevo
      @ultimo = nodo if @ultimo.nil? # y el último si era lista vacía
    end
  
    def insertarAlFinal(valor)
      nodo = Nodo.new(valor)
      @primero = nodo if @primero.nil?
      @ultimo.enlace = nodo unless @ultimo.nil?
      @ultimo = nodo
    end
  
    def verLista()
      temp = @primero
      while !( temp.nil?)
        print temp.dato.to_s + ' '
        temp = temp.enlace
      end
      puts " "
    end 
  end
  
  class Nodo
    attr_accessor :dato # crea get set de dato
    def initialize(valor) # define un nodo
      @dato = valor
      @enlace = nil # llamado sig (de siguiente) en otras nomenclaturas
    end
  
    def enlace # getEnlace de forma manual
      @enlace
    end
  
    def enlace=(valor) # setEnlace
      @enlace = valor
    end
  
  end
  
  
  
  list = ListaEnlazada.new()
  #list.insertarAlPrincipio(10)
  #list.insertarAlPrincipio(20)
  #list.insertarAlPrincipio(30)
  list.insertarAlFinal(2)
  list.insertarAlFinal(3)
  list.insertarAlFinal(4)
  list.insertarAlFinal(1)
  list.verLista