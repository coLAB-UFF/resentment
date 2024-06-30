library(cowplot)
library(hrbrthemes)
library(tidyverse)

# Plotar quatro imagens lado a lado com um único título

#A
imagem01 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/4A - Ressent00029.jpg", scale = 0.9)
imagem01 <- ggdraw(add_sub(imagem01, "4A", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem02 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/4B - IMG-20190929-WA0028.jpg", scale = 0.9)
imagem02 <- ggdraw(add_sub(imagem02, "4B", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem03 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/4C - IMG-20190927-WA0303.jpg", scale = 0.9)
imagem03 <- ggdraw(add_sub(imagem03, "4C", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))

#A
imagem04 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/4D - IMG-20191018-WA0170.jpg", scale = 0.9)
imagem04 <- ggdraw(add_sub(imagem04, "4D", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))


#B
imagem05 <- ggdraw() + 
  draw_image("~/Downloads/corpus_memes_ressentimento/4E - IMG-20220126-WA0224.jpg", scale = 0.9)
imagem05 <- ggdraw(add_sub(imagem05, "4E", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))


# Criar lista para imagens a serem plotadas
plot_row <- plot_grid(imagem01, imagem02, imagem03, imagem04, imagem05, ncol = 2)

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
png("~/Downloads/FIG004.png", units="in", width=11, height=11, res=300)
plot_grid(
  title, plot_row, caption,
  ncol = 1,
  # rel_heights values control vertical title margins
  rel_heights = c(0.1, 1)
)
dev.off()
