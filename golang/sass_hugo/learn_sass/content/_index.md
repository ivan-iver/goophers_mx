+++
title = "Hugo-Webslides"
+++
<!--: .wrap .size-70 .blurry-bg ..aligncenter bgimage=images/catrina.jpg -->


## Aprendiendo a usar SASS con Hugo

<!--: .text-intro -->Maquillando nuestro sitio con [**SASS**](https://sass-lang.com/).

<!--: .text-link -->[{{< svg fa-github >}}Github](https://github.com/iver/hugo-webslides)

---

<!--: .wrap -->

## **Herramientas**
Lo que debemos conocer antes de usar [Hugo](https://gohugo.io/).

<!--: .flexblock gallery -->
- {{< gallery title="HTML JS CSS" href="#slide=2" width="482" src="/images/friends.png" >}}HTML JS CSS{{< /gallery >}}
- {{< gallery title="SASS" href="#slide=4" src="https://cdn.worldvectorlogo.com/logos/node-sass.svg" >}}SASS{{< /gallery >}}
- {{< gallery title="Hugo Site Generator" href="#slide=10" src="https://www.datascienceblog.net/post/other/blogdown_hugo_avatar.png" >}}Hugo{{< /gallery >}}

---

<!--: .wrap -->

## **¿Que es Hugo?**

<!-- : .flexblock -->
- {{< flexblock "No es el generador promedio de sitios estáticos" 3 >}}
 
```
Hugo is not your average static site generator.
```

{{< /flexblock >}}

- {{< flexblock "Hugo es un generador de sitios estáticos" 3 >}}

  ```
  Los archivos HTML estáticos en disco son mucho más fáciles de razonar en comparación con los sitios web basados ​​en servidores y bases de datos.
  ```

{{< /flexblock >}}

- {{< flexblock "Del sitio web de hugo" 3 >}}

```
Hugo es un generador de sitios estáticos rápido y moderno escrito en Go, y diseñado para hacer que la creación de sitios web sea divertida nuevamente.
```

{{< /flexblock >}}

---

<!-- : .wrap .size-40 -->

### **1ro Lo configuramos**

<!-- : .text-intro -->Se lee de cada proyecto el archivo **config.toml**.

~~~toml
baseURL = "http://learn.iver.mx/"
languageCode = "en-us"
title = "Aprendiendo a usar SASS con hugo"
disableKinds = ["sitemap", "RSS"]
theme = "slides"

[params.webslides]
  banner = false
  slideshow = true
  vertical = false
  autoslide = false
  changeOnClick = false
  disableLoop = false
  minWheelDelta = 40
  disableNavigateOnScroll = false
  scrollWait = 450
  slideOffset = 50
  hideIndex = false
~~~


---
<!-- : .wrap -->

|||v

### **Donde se guardan los recursos**

Se pueden leer los recursos en "<code>theme/assets</code>" o bien en "<code>theme/static</code>".

|||

~~~md

├── assets
│   ├── main.js
│   ├── css
│   │   └── style.css
├── static
│   ├── css
│   │   ├── svg-icons.css
│   │   └── webslides.css
│   └── js
│       ├── svg-icons.js
│       └── webslides.min.js

~~~

---
<!-- : .wrap -->


|||

~~~
assets
├── js
│   ├── main.js
│   └── utils.js
└── css
    ├── svg-icons.css
    └── styles.css
~~~

|||

### O bien en la raíz del proyecto

Se puede sobre escribir el contenido de un tema, ya que toma prioridad el archivo de la raíz del sitio.

---
<!-- : .aligncenter -->

## Como se deben incluir los recursos

Se debe hacer uso de los pipes.

<code>{{ $style := resources.Get "sass/main.scss" }}</code>

---
<!-- : .wrap -->

### Se pueden usar con todos los recursos

#### JavaScript
~~~html
  {{ $js := resources.Get .link}
  <script src="{{ $js.RelPermalink }}" integrity="{{ .signature }}" crossorigin="anonymous"></script>
~~~


---
<!-- : .wrap -->

### Se pueden usar con todos los recursos

#### Imágenes
~~~html
  {{- $image := resources.Get “images/logo.jpg” -}}

  // Resize to a width of 600px and preserve ratio
  {{ $image := $resource.Resize "600x" }}

  // Resize to a height of 400px and preserve ratio
  {{ $image := $resource.Resize "x400" }}

  // Resize to a width 600px and a height of 400px
  {{ $image := $resource.Resize "600x400" }}
~~~

---
<!-- : .wrap -->

### Se pueden usar con todos los recursos

#### CSS
~~~html
  {{ $sass := resources.Get "sass/main.scss" }}
  {{ $style := $sass | resources.ToCSS }}


  {{ "<!-- vendor -->" | safeHTML }}
  {{ range .Site.Params.vendor.css }}
      {{ $vendor := resources.Get .link }}
      <link rel="stylesheet" href="{{ $vendor.RelPermalink }}" media="screen" integrity="{{ .signature }}">
  {{ end }}

  {{ $scssMain := "scss/style.scss"}}
  {{ "<!-- Main Stylesheet -->" | safeHTML }}
  {{ if .Site.IsServer }}
  {{/* Note the missing postCSS. This makes it snappier to develop in Chrome, but makes it look sub-optimal in other browsers. */}}
      {{ $styles := resources.Get $scssMain | toCSS (dict "enableSourceMap" true) }}
      <link rel="stylesheet" href="{{ $styles.Permalink }}" media="screen">
  {{ else }}
      {{ $styles := resources.Get $scssMain | toCSS (dict "enableSourceMap" false) | minify | fingerprint }}
      <link rel="preload" href="{{ $styles.RelPermalink }}" as="style">
      <link rel="stylesheet" href="{{ $styles.Permalink }}" media="screen" integrity="{{ $styles.Data.integrity }}">
  {{ end }}
~~~



---
<!-- : .wrap -->

### Gracias!

## Preguntas?

- {{< gallery title="Preguntas" href="#" src="https://www.dondeir.com/wp-content/uploads/2020/05/hugo-gatel-conferencia.jpg" >}}Preguntas{{< /gallery >}}
