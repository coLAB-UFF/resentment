library(cowplot)
library(hrbrthemes)
library(tidyverse)

# Plotar quatro imagens lado a lado com um único título

#A
imagem01 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1A - Ressent00001.jpg", scale = 0.9)
imagem01 <- ggdraw(add_sub(imagem01, "1A", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem02 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1B - Ressent00021.jpg", scale = 0.9)
imagem02 <- ggdraw(add_sub(imagem02, "1B", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem03 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1C - Ressent00033.jpg", scale = 0.9)
imagem03 <- ggdraw(add_sub(imagem03, "1C", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))

#A
imagem04 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1D - Ressent00016.jpg", scale = 0.9)
imagem04 <- ggdraw(add_sub(imagem04, "1D", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem05 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1E - Ressent00010.jpg", scale = 0.9)
imagem05 <- ggdraw(add_sub(imagem05, "1E", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem06 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1F - Ressent00002.jpg", scale = 0.9)
imagem06 <- ggdraw(add_sub(imagem06, "1F", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))


#A
imagem07 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1G - Ressent00007.jpg", scale = 0.9)
imagem07 <- ggdraw(add_sub(imagem07, "1G", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem08 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1H - Ressent00008.jpg", scale = 0.9)
imagem08 <- ggdraw(add_sub(imagem08, "1H", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem09 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1I - Ressent00024.jpg", scale = 0.9)
imagem09 <- ggdraw(add_sub(imagem09, "1I", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))

#A
imagem10 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1J - Ressent00018.jpg", scale = 0.9)
imagem10 <- ggdraw(add_sub(imagem10, "1J", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem11 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1K - Ressent00013.jpg", scale = 0.9)
imagem11 <- ggdraw(add_sub(imagem11, "1K", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem12 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1L - Ressent00015.jpg", scale = 0.9)
imagem12 <- ggdraw(add_sub(imagem12, "1L", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))


#A
imagem13 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1M - Ressent00026.jpg", scale = 0.9)
imagem13 <- ggdraw(add_sub(imagem13, "1M", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem14 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/1N - Ressent00027.jpg", scale = 0.9)
imagem14 <- ggdraw(add_sub(imagem14, "1N", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C


# Criar lista para imagens a serem plotadas
plot_row <- plot_grid(imagem01, imagem02, imagem03, imagem04, imagem05, imagem06, imagem07, imagem08, imagem09, imagem10, imagem11, imagem12, imagem13, imagem14, ncol = 3)

# Adicionar título
title <- ggdraw() +
  draw_label(
    "",
    fontface = 'bold',
    x = 0,
    hjust = 0
  ) +
  theme_ipsum()

# Adicionar legenda
caption <- ggdraw() +  
  theme_ipsum() +
  labs(caption = "")

# Plotar imagens com título e legenda
png("~/Downloads/FIG001.png", units="in", width=11, height=11, res=300)
plot_grid(
  title, plot_row, caption,
  ncol = 1,
  # rel_heights values control vertical title margins
  rel_heights = c(0.1, 1)
)
dev.off()
