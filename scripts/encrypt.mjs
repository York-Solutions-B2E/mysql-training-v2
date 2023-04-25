import Cryptify from 'cryptify';
import fs from 'fs'

const password = fs.readFileSync('./.key', {encoding:'utf8', flag:'r'});

async function encrypt(filePath) {
    return new Promise((resolve, reject) => {
        new Cryptify(filePath, password)
          .encrypt()
          .then(resolve)
          .catch(reject);
    });
}

const lessonFolderList = await fs.readdirSync('./_lessons');
for (let lesson of lessonFolderList) {
    const lessonFiles = await fs.readdirSync(`./_lessons/${lesson}`);
    if (lessonFiles.includes('assignment-key')) {
        const keyFileList = await fs.readdirSync(`./_lessons/${lesson}/assignment-key`);
        for (let keyFile of keyFileList) {
            await encrypt(`./_lessons/${lesson}/assignment-key/${keyFile}`)
        }
    }
}



// const filePath = './example.txt'; // This can also be an array of paths.
// const password = process.env.ENV_SECRET_KEY;
//
// const instance = new Cryptify(filePath, password);
// instance
//   .encrypt()
//   .then((files) => {
//     /* Do stuff */
//   })
//   .then(() => instance.decrypt())
//   .then((files) => {
//     /* Do stuff */
//   })
//   .catch((e) => console.error(e));