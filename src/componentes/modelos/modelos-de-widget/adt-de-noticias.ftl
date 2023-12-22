<#if entries?has_content>
	<div class="estrutura-carousel">
    <div class="slick-carousel adt-noticias-carousel">
        <#list entries as entry>
            <#assign assetRenderer=entry.getAssetRenderer() />
            <#assign article=assetRenderer.getArticle() />
            <#assign document=saxReaderUtil.read(article.getContent()) />
            <#assign viewURL=assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
            <#assign rootElement=document.getRootElement() />

            <#assign categorys=entry.getCategories() />

            <#assign fieldTitleValueXPath=saxReaderUtil.createXPath("dynamic-element[@name='Text04429080' ]") />
            <#assign TituloNoticia=fieldTitleValueXPath.selectSingleNode(rootElement).getStringValue()?trim />

            <#assign fieldImgValueXPath=saxReaderUtil.createXPath("dynamic-element[@name='Image45937087' ]") />
            <#assign fieldImgValueNodes=fieldImgValueXPath.selectSingleNode(rootElement) />
            <#assign imgValue=fieldImgValueNodes.getStringValue() />
            <#assign fileJson=jsonFactoryUtil.createJSONObject(imgValue) />

            <#assign fieldDescriValueXPath=saxReaderUtil.createXPath("dynamic-element[@name='RichText11357229' ]") />
            <#assign descricaoNoticia=fieldDescriValueXPath.selectSingleNode(rootElement).getStringValue()?trim?substring(0,150) />

            <div class="slick-slide adt-noticias-slides">
               <h1 class="titulo-noticias">${TituloNoticia}</h1>
							<div class="imagem">
                  <a href="/w/${article.urlTitle}" target="_blank">
                    <img src="${fileJson.url}" alt="${fileJson.alt}">
                  </a>
	
                <div class="descricao-noticia">
							    <a href="/w/${article.urlTitle}" target="_blank">${descricaoNoticia}...confira já!</a>
							   </div>
                  <p class="categorias">
                            Categorias:
                            <#list categorys as category>
                                <span style="color: 
                                    <#if category.getName() == 'Ciências'>blue<#elseif category.getName() == 'Futebol'>red<#elseif category.getName() == 'Tecnologia'>purple<#elseif category.getName() == 'Globais'>black<#elseif category.getName() == 'Economia'>green</#if>;
                                ">
                                    ${category.getName()}
                                </span>
                            </#list>
                        </p>
            </div>
				</div>		
      </#list>
    </div>
</div>
</#if>
<script type="text/javascript">
    Liferay.on('allPortletsReady', () => {
        $('.slick-carousel').slick({
            dots: true,
            infinite: true,
            speed: 600,
            fade: true,
            cssEase: 'linear'
        });
    });
</script>