'use strict';

const { default: axios } = require("axios");


class DogController {
    constructor(){
    }

    async getCoolDog(){
        try {
            const response = await axios.get('https://dog.ceo/api/breeds/image/random');
            const url = response.data.message;
            return url;
        }catch (error){
            console.log(error);
            throw error;
        }
    }
}

module.exports = {DogController};