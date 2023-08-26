<a name="readme-top"></a>




<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/github_username/repo_name">
    <img src="https://github.com/noticso/nt_ammunation/assets/76558194/4804ee90-846b-45bc-be97-33cfe917e27d" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">nt_crafting</h3>

  <p align="center">
    Un menu crafting semplice, bello, e facile da configurare. Costantemente aggiornato!
    <br />
    <a href="https://github.com/noticso/nt_crafting"><strong>Esplora le docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/noticso/nt_crafting">Guarda la demo</a>
    ·
    <a href="https://github.com/noticso/nt_crafting/issues">Segnala Bug</a>
    ·
    <a href="https://github.com/noticso/nt_crafting/issues">Richiedi Features</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Tabella dei contenuti</summary>
  <ol>
    <li>
      <a href="#progetto">A proposito del progetto...</a>
      <ul>
        <li><a href="#costruito-con">Costruito con</a></li>
      </ul>
    </li>
    <li>
      <a href="#inizia">Inizia</a>
      <ul>
        <li><a href="#pre-requisiti">Pre-requisiti</a></li>
        <li><a href="#installazione">Installazione</a></li>
      </ul>
    </li>
    <li><a href="#utilizzo">Come utilizzarlo</a></li>
    <li><a href="#contribuire">Contribuire</a></li>
    <li><a href="#contact">Contatti</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## Progetto

![crafting](https://github.com/noticso/nt_crafting/assets/76558194/23bf1562-1adb-4958-8930-52772b15a39b)




<p align="right">(<a href="#readme-top">torna all'inizio</a>)</p>



### Costruito con 

* [![Next][Next.js]][Next-url]
* [![React][React.js]][React-url]

<p align="right">(<a href="#readme-top">torna all'inizio</a>)</p>



<!-- GETTING STARTED -->
## Inizia

Per iniziare dovrai:

### Pre-requisiti
1. Avere una base FiveM con le ox resources [(ox_inventory, ox_lib, ox_mysql)](https://overextended.dev/)

### Installazione


1. Clona la repository
   ```sh
   git clone https://github.com/noticso/nt_crafting.git
   ```
2. Configura il tuo menu in `Config.lua`
   ```lua
    ['ITEM_HASH'] = {
        name= 'Item Name',
        img = './img/item_hash.png',
        id='ITEM_HASH',
        material={
            MATERIAL_HASH = Quantity,
        },
        points = POINTS_GAINED,
        levelRequired = NUMBER
    },
   ```

<p align="right">(<a href="#readme-top">torna all'inizio</a>)</p>



<!-- USAGE EXAMPLES -->
## Utilizzo

Guarda questo video per vedere l'utilizzo di questo script di FiveM

[Link Video](https://streamable.com/jop0ry)


<!-- CONTRIBUTING -->
## Contribuire

Se vuoi contribuire a questo script segui questo passaggi

1. Fai un Fork del Progetto
2. Crea il tuo branch delle feature (`git checkout -b feature/FeatureStupende`)
3. Conferma le tue modifiche (`git commit -m 'Add some FeatureStupende'`)
4. Invia il branch (`git push origin feature/FeatureStupende`)
5. Apri una Pull Request

<p align="right">(<a href="#readme-top">torna all'inizio</a>)</p>




<!-- CONTACT -->
## Contact

[Discord](https://discord.gg/uY9agGndYs) - @noticso

Project Link: [https://github.com/noticso/nt_crafting](https://github.com/noticso/nt_crafting)

<p align="right">(<a href="#readme-top">torna all'inizio</a>)</p>




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[Next.js]: https://img.shields.io/badge/lua-007bff?style=for-the-badge&logo=lua&logoColor=white
[Next-url]: https://www.lua.org/
[React.js]: https://img.shields.io/badge/javascript-000000?style=for-the-badge&logo=javascript&logoColor=yellow
[React-url]: https://javascript.info/
