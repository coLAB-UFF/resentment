library(cowplot)
library(hrbrthemes)
library(tidyverse)

# Plotar quatro imagens lado a lado com um único título

#A
imagem01 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2A - Ressent00004.jpg", scale = 0.9)
imagem01 <- ggdraw(add_sub(imagem01, "2A", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem02 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2B - Ressent00036.jpg", scale = 0.9)
imagem02 <- ggdraw(add_sub(imagem02, "2B", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem03 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2C - Ressent00014.jpg", scale = 0.9)
imagem03 <- ggdraw(add_sub(imagem03, "2C", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))

#A
imagem04 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2D - Ressent00012.jpg", scale = 0.9)
imagem04 <- ggdraw(add_sub(imagem04, "2D", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem05 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2E - Ressent00023.jpg", scale = 0.9)
imagem05 <- ggdraw(add_sub(imagem05, "2E", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem06 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2F - Ressent00005.jpg", scale = 0.9)
imagem06 <- ggdraw(add_sub(imagem06, "2F", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))


#A
imagem07 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2G - Ressent00020.jpg", scale = 0.9)
imagem07 <- ggdraw(add_sub(imagem07, "2G", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem08 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2H - Ressent00025.jpg", scale = 0.9)
imagem08 <- ggdraw(add_sub(imagem08, "2H", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem09 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2I - Ressent00011.jpg", scale = 0.9)
imagem09 <- ggdraw(add_sub(imagem09, "2I", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))

#A
imagem10 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2J - Ressent00032.jpg", scale = 0.9)
imagem10 <- ggdraw(add_sub(imagem10, "2J", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem11 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2K - Ressent00019.jpg", scale = 0.9)
imagem11 <- ggdraw(add_sub(imagem11, "2K", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))

#C
imagem12 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/2L - Ressent00028.jpg", scale = 0.9)
imagem12 <- ggdraw(add_sub(imagem12, "2L", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))


# Criar lista para imagens a serem plotadas
plot_row <- plot_grid(imagem01, imagem02, imagem03, imagem04, imagem05, imagem06, imagem07, imagem08, imagem09, imagem10, imagem11, imagem12, ncol = 3)

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
png("~/Downloads/FIG002.png", units="in", width=11, height=11, res=300)
plot_grid(
  title, plot_row, caption,
  ncol = 1,
  # rel_heights values control vertical title margins
  rel_heights = c(0.1, 1)
)
dev.off()
