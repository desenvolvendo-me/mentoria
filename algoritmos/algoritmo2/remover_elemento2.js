var removeElement = function(nums, val) {
    let total = nums.length; // Tamanho original do array
    let countVal = nums.filter(num => num === val).length; // Conta quantas vezes val aparece
    let k = total - countVal; // Número de elementos que não são val

    // Agora, reorganizamos o array
    let i = 0;
    for (let num of nums) {
        if (num !== val) {
            nums[i] = num; // Move os elementos diferentes de val para o começo
            i++;
        }
    }

    return k; // Retorna quantos elementos ficaram
};

console.log(removeElement([3, 2, 2, 3], 3));