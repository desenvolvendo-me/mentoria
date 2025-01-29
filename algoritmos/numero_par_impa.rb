#Problema: 
# Verificar se uma número é par ou ímpar

#Solução
#- Receber um número
#- Verificar é ser um número
#- Verificar é divisivel por 2
#- Se for divisivel por 2 é par
#- Senão for divisivel por 2 é impar

#Código
def par_impar(numero)
    # Verifica se o argumento é um número (Integer ou Float)
    unless numero.is_a?(Numeric)
        puts "Por favor, insira um número válido."
        return
    end

    # Verifica se o número é divisível por 2
    if numero % 2 == 0
        puts "Par"
    else
        puts "Ímpar"
    end
end

# Testando a função
par_impar(10)  # Deve imprimir "Par"
par_impar(7)   # Deve imprimir "Ímpar"
par_impar("abc")  # Deve imprimir "Por favor, insira um número válido."