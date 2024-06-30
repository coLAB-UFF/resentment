library(cowplot)
library(hrbrthemes)
library(tidyverse)

# Plotar quatro imagens lado a lado com um único título

#A
imagem01 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/3A - Ressent00006.jpg", scale = 0.9)
imagem01 <- ggdraw(add_sub(imagem01, "3A", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem02 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/3B - Ressent00030.jpg", scale = 0.9)
imagem02 <- ggdraw(add_sub(imagem02, "3B", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem03 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/3C - Ressent00031.jpg", scale = 0.9)
imagem03 <- ggdraw(add_sub(imagem03, "3C", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))

#A
imagem04 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/3D - Ressent00022.jpg", scale = 0.9)
imagem04 <- ggdraw(add_sub(imagem04, "3D", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem05 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/3E - Ressent00034.jpg", scale = 0.9)
imagem05 <- ggdraw(add_sub(imagem05, "3E", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem06 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/3F - Ressent00035.jpg", scale = 0.9)
imagem06 <- ggdraw(add_sub(imagem06, "3F", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))


#A
imagem07 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/3G - Ressent00017.jpg", scale = 0.9)
imagem07 <- ggdraw(add_sub(imagem07, "3G", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem08 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/3H - Ressent00003.jpg", scale = 0.9)
imagem08 <- ggdraw(add_sub(imagem08, "3H", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem09 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/3I - Ressent00009.jpg", scale = 0.9)
imagem09 <- ggdraw(add_sub(imagem09, "3I", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))


# Criar lista para imagens a serem plotadas
plot_row <- plot_grid(imagem01, imagem02, imagem03, imagem04, imagem05, imagem06, imagem07, imagem08, imagem09, ncol = 3)

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
png("~/Downloads/FIG003.png", units="in", width=11, height=11, res=300)
plot_grid(
  title, plot_row, caption,
  ncol = 1,
  # rel_heights values control vertical title margins
  rel_heights = c(0.1, 1)
)
dev.off()
