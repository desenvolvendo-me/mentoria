var removeElement = function(nums, val) {
    let k = 0; // Contador para os elementos que não são val

    for (let i = 0; i < nums.length; i++) {
        if (nums[i] !== val) {
            nums[k] = nums[i]; // Move o elemento para a posição k
            k++; // Aumenta o contador
        }
    }

    return k; // Retorna a quantidade de elementos que não são val
};

console.log(removeElement([3, 2, 2, 3], 3));