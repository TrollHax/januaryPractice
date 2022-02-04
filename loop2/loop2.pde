void setup(){
    size(160,160);
    background(0);

    for (int i = 0; i < 7; i++) {
        for (int c = 0; c < 7; c++) {
            fill(255, 255, 0);
            ellipse(20 + i*20, 20 + c*20, 20, 20);
            
        }
        
        fill(0, 0, 255);
        ellipse(20 + i*20, 20 + i*20, 20, 20);
    }

}