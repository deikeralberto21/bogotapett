<section class="section-banners-home row justify-content-center overflow-hidden" data-store="banner-home-categories">
    <div class="row justify-content-center container{% if settings.banners_full %}-fluid{% endif %}">
        <div class='containerBanner'>
            {% set num_banners = 0 %}
            {% for banner in ['banner_01', 'banner_02', 'banner_03'] %}
                {% set banner_show = attribute(settings,"#{banner}_show") %}
                {% set banner_title = attribute(settings,"#{banner}_title") %}
                {% set has_banner =  banner_show and (banner_title or banner_description or "#{banner}.jpg" | has_custom_image) %}
                {% if has_banner %}
                    {% set num_banners = num_banners + 1 %}
                {% endif %}
            {% endfor %}
            {% set int = 1 %}
            {% for banner in ['banner_01', 'banner_02', 'banner_03'] %}
                {% set banner_show = attribute(settings,"#{banner}_show") %}
                {% set banner_image = "#{banner}.jpg" | has_custom_image %}
                {% set banner_title = attribute(settings,"#{banner}_title") %}
                {% set banner_description = attribute(settings,"#{banner}_description") %}
                {% set banner_url = attribute(settings,"#{banner}_url") %}
                {% set has_banner =  banner_show and (banner_title or banner_description or banner_image) %}
                {% set has_banner_text =  banner_title or banner_description %}
                {% if has_banner %}
                    <div class="col-md-12">
                        <div class="textbanner{% if settings.theme_rounded %} box-rounded textbanner-shadow{% endif %}">
                            {% if banner_url %}
                                {% if int == 3%}

                                    <a class="textbanner-link" href="https://beethovenpetcare.com/alimentos3"{% if banner_title %} title="{{ banner_title }}" aria-label="{{ banner_title }}"{% else %} title="{{ 'Banner de' | translate }} {{ store.name }}" aria-label="{{ 'Banner de' | translate }} {{ store.name }}"{% endif %}>

                                {%else%}
                                    <a class="textbanner-link" href="{{ banner_url | setting_url }}"{% if banner_title %} title="{{ banner_title }}" aria-label="{{ banner_title }}"{% else %} title="{{ 'Banner de' | translate }} {{ store.name }}" aria-label="{{ 'Banner de' | translate }} {{ store.name }}"{% endif %}>
                                {% endif %}
                            {% endif %}
                            {% if banner_image %}
                                <div class="textbanner-image{% if has_banner_text and textoverimage %} overlay{% endif %}">
                                    <img class="textbanner-image-background lazyautosizes lazyload blur-up-huge" src="{{ "#{banner}.jpg" | static_url | settings_image_url('tiny') }}" data-srcset="{{ "#{banner}.jpg" | static_url | settings_image_url('large') }} 480w, {{ "#{banner}.jpg" | static_url | settings_image_url('huge') }} 640w" data-sizes="auto" data-expand="-10" {% if banner_title %}alt="{{ banner_title }}"{% else %}alt="{{ 'Banner de' | translate }} {{ store.name }}"{% endif %} />
                                </div>
                            {% endif %}
                            {% if has_banner_text %}
                                <div class="textbanner-text{% if textoverimage %} over-image{% endif %}{% if settings.theme_rounded %} textbanner-text-primary{% endif %}">
                                    {% if banner_title %}
                                        <div class="h2">{{ banner_title }}</div>
                                    {% endif %}
                                    {% if banner_description %}
                                        <div class="textbanner-paragraph">{{ banner_description }}</div>
                                    {% endif %}
                                </div>
                            {% endif %}
                            {% if banner_url %}
                                </a>
                            {% endif %}
                        </div>
                    </div>
                {% endif %}
                {% set int = int + 1 %}
            {% endfor %}
            <div class="col-md-12">
                <div class="textbanner box-rounded textbanner-shadow">
                <a class="textbanner-link" href="https://beethovenpetcare.com/accesorios11" title="Banner de BEETHOVEN PET CARE VILLAVICENCIO " aria-label="Banner de BEETHOVEN PET CARE VILLAVICENCIO ">
                <div class="textbanner-image">
                <img class="textbanner-image-background lazyautosizes blur-up-huge lazyloaded" src="{{ 'images/ACCESORIO.png' | static_url }}">
                </div>
                </a>
                </div>
            </div>
            <div class="col-md-12">
                <div class="textbanner box-rounded textbanner-shadow">
                <a class="textbanner-link" href="https://beethovenpetcare.com/farmacia11" title="Banner de BEETHOVEN PET CARE VILLAVICENCIO " aria-label="Banner de BEETHOVEN PET CARE VILLAVICENCIO ">
                <div class="textbanner-image">
                <img class="textbanner-image-background lazyautosizes blur-up-huge lazyloaded" src="{{ 'images/LIMPIEZA.png' | static_url }}">
                </div>
                </a>
                </div>
            </div>

            <div class="col-md-12">
            <div class="textbanner box-rounded textbanner-shadow">
            <a class="textbanner-link" href="https://beethovenpetcare.com/higiene-principal/" title="Banner de BEETHOVEN PET CARE VILLAVICENCIO " aria-label="Banner de BEETHOVEN PET CARE VILLAVICENCIO ">
            <div class="textbanner-image">
            <img class="textbanner-image-background lazyautosizes blur-up-huge lazyloaded" src="{{ 'images/limpi.png' | static_url }}">
            </div>
            </a>
            </div>
            </div>
        </div>
    </div>
</section>

<script>
    var contenedorbN = document.querySelector('.containerBanner')
    if(window.innerWidth <=767){
        contenedorbN.classList.toggle('containerBannerMovil')
    }
    window.addEventListener('resize',()=>{
        if(window.innerWidth <=767){
            contenedorbN.classList.add('containerBannerMovil')
        }else{
            contenedorbN.classList.remove('containerBannerMovil')
        }   
    })

</script>
