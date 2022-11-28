import pygame

pygame.init()

# nom de la fenetre + hauteur de la fenêtre
pygame.display.set_caption("Jeux Python")
# dimmension full screen
screen = pygame.display.set_mode((800, 500))
#recupération du fond d'écran 
background = pygame.image.load('Asset/bg.jpg').convert()
background = pygame.transform.scale(background,(800,500))
#Charger le jeu
#game = Game() 

running = True

#boucle du jeu
while running:
    
    #application du fond d'écran plus décalage
    screen.blit(background, (0, 0))
    
    pygame.display.flip()
    
    #boucle pour récuperer les events
    for event in pygame.event.get():
        
        # si on veut quitte la page 
        if event.type == pygame.QUIT:
            #fin de la boucle 
            running = False
            pygame.quit()       
