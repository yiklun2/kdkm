.class public Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;
.super Ljava/lang/Object;
.source "RenderOptimizer.java"

.field private backBuffer:Ljavax/microedition/lcdui/Graphics;
.field private backBufferImage:Ljavax/microedition/lcdui/Image;
.field private screenWidth:I
.field private screenHeight:I
.field private viewFrustum:Ljava/awt/Rectangle;
.field private visibleObjects:Ljava/util/List;
.field private lodLevels:Ljava/util/Map;
.field private currentLODLevel:I
.field private statistics:Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->screenWidth:I
    iput p2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->screenHeight:I
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->visibleObjects:Ljava/util/List;
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->lodLevels:Ljava/util/Map;
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->statistics:Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->initializeBackBuffer()V
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->initializeLODSystem()V
    const/4 v0, 0x0
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->updateViewFrustum(IIII)V
    return-void
.end method

.method private initializeBackBuffer()V
    .locals 3
    :try_start_0
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->screenWidth:I
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->screenHeight:I
    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;
    move-result-object v0
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->backBufferImage:Ljavax/microedition/lcdui/Image;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->backBufferImage:Ljavax/microedition/lcdui/Image;
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;
    move-result-object v0
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->backBuffer:Ljavax/microedition/lcdui/Graphics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return-void
    :catch_0
    move-exception v0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Failed to create back buffer: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    goto :goto_0
.end method

.method private initializeLODSystem()V
    .locals 6
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->lodLevels:Ljava/util/Map;
    const/4 v1, 0x0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    new-instance v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;
    const/4 v3, 0x0
    const/high16 v4, 0x3f800000    # 1.0f
    const/16 v5, 0x64
    const-string v6, "High"
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;-><init>(IFFLjava/lang/String;)V
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->lodLevels:Ljava/util/Map;
    const/4 v1, 0x1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    new-instance v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;
    const/4 v3, 0x1
    const v4, 0x3f333333    # 0.7f
    const/16 v5, 0xc8
    const-string v6, "Medium"
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;-><init>(IFFLjava/lang/String;)V
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->lodLevels:Ljava/util/Map;
    const/4 v1, 0x2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    new-instance v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;
    const/4 v3, 0x2
    const v4, 0x3ecccccd    # 0.4f
    const/16 v5, 0x12c
    const-string v6, "Low"
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;-><init>(IFFLjava/lang/String;)V
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->lodLevels:Ljava/util/Map;
    const/4 v1, 0x3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    new-instance v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;
    const/4 v3, 0x3
    const v4, 0x3e4ccccd    # 0.2f
    const/16 v5, 0x1f4
    const-string v6, "Very Low"
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;-><init>(IFFLjava/lang/String;)V
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/4 v0, 0x0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->currentLODLevel:I
    return-void
.end method

.method public updateViewFrustum(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    new-instance v0, Ljava/awt/Rectangle;
    add-int/lit8 v1, p1, -0x32
    add-int/lit8 v2, p2, -0x32
    add-int/lit8 v3, p3, 0x64
    add-int/lit8 v4, p4, 0x64
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->viewFrustum:Ljava/awt/Rectangle;
    return-void
.end method

.method public cullObjects(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderableObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderableObject;",
            ">;"
        }
    .end annotation
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->visibleObjects:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->clear()V
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-nez v2, :cond_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->statistics:Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->visibleObjects:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I
    move-result v3
    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->visibleObjects:I
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->statistics:Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    invoke-interface {p1}, Ljava/util/List;->size()I
    move-result v3
    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->totalObjects:I
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->visibleObjects:Ljava/util/List;
    return-object v2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderableObject;
    invoke-direct {p0, v1}, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->isObjectVisible(Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderableObject;)Z
    move-result v2
    if-eqz v2, :cond_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->visibleObjects:Ljava/util/List;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :cond_1
    goto :goto_0
.end method

.method private isObjectVisible(Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderableObject;)Z
    .locals 2
    .param p1, "obj"    # Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderableObject;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->viewFrustum:Ljava/awt/Rectangle;
    if-eqz v0, :cond_0
    if-nez p1, :cond_1
    :cond_0
    const/4 v0, 0x0
    :goto_0
    return v0
    :cond_1
    invoke-interface {p1}, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderableObject;->getBounds()Ljava/awt/Rectangle;
    move-result-object v0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->viewFrustum:Ljava/awt/Rectangle;
    invoke-virtual {v0, v1}, Ljava/awt/Rectangle;->intersects(Ljava/awt/Rectangle;)Z
    move-result v0
    goto :goto_0
.end method

.method public beginFrame()Ljavax/microedition/lcdui/Graphics;
    .locals 3
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->backBuffer:Ljavax/microedition/lcdui/Graphics;
    const/high16 v1, -0x1000000
    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->backBuffer:Ljavax/microedition/lcdui/Graphics;
    const/4 v1, 0x0
    const/4 v2, 0x0
    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->screenWidth:I
    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->screenHeight:I
    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->statistics:Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->frameCount:I
    add-int/lit8 v1, v1, 0x1
    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->frameCount:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->statistics:Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    iput-wide v0, v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->startTime:J
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->backBuffer:Ljavax/microedition/lcdui/Graphics;
    return-object v0
.end method

.method public endFrame(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->statistics:Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    iput-wide v0, v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->endTime:J
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->statistics:Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    iget-wide v3, v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->endTime:J
    iget-wide v5, v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->startTime:J
    sub-long/2addr v3, v5
    iput-wide v3, v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->frameTime:J
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->statistics:Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    iget-wide v3, v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->frameTime:J
    const-wide/16 v5, 0x0
    cmp-long v3, v3, v5
    if-lez v3, :cond_0
    const-wide/16 v3, 0x3e8
    iget-wide v5, v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->frameTime:J
    div-long/2addr v3, v5
    long-to-int v3, v3
    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->currentFPS:I
    :cond_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->statistics:Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    invoke-virtual {v2}, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->updateAverageFPS()V
    return-void
.end method

.method public getBackBufferImage()Ljavax/microedition/lcdui/Image;
    .locals 1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->backBufferImage:Ljavax/microedition/lcdui/Image;
    return-object v0
.end method

.method public getCurrentLODLevel()Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;
    .locals 2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->lodLevels:Ljava/util/Map;
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->currentLODLevel:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;
    return-object v0
.end method

.method public getStatistics()Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    .locals 1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer;->statistics:Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;
    return-object v0
.end method

.method public update(J)V
    .locals 0
    .param p1, "deltaTime"    # J
    return-void
.end method

.method public interface RenderableObject
    .method public abstract getX()I
    .end method
    .method public abstract getY()I
    .end method
    .method public abstract getBounds()Ljava/awt/Rectangle;
    .end method
    .method public abstract render(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;)V
    .end method
.end method

.method public static class LODLevel
    .field public final level:I
    .field public final detailFactor:F
    .field public final distanceThreshold:I
    .field public final name:Ljava/lang/String;
    
    .method public constructor <init>(IFFLjava/lang/String;)V
        .locals 0
        .param p1, "level"    # I
        .param p2, "detailFactor"    # F
        .param p3, "distanceThreshold"    # I
        .param p4, "name"    # Ljava/lang/String;
        invoke-direct {p0}, Ljava/lang/Object;-><init>()V
        iput p1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;->level:I
        iput p2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;->detailFactor:F
        iput p3, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;->distanceThreshold:I
        iput-object p4, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$LODLevel;->name:Ljava/lang/String;
        return-void
    .end method
.end method

.method public static class RenderStatistics
    .field public frameCount:I
    .field public visibleObjects:I
    .field public totalObjects:I
    .field public currentLODLevel:I
    .field public startTime:J
    .field public endTime:J
    .field public frameTime:J
    .field public currentFPS:I
    .field public averageFPS:I
    .field private fpsHistory:Ljava/util/List;
    
    .method public constructor <init>()V
        .locals 1
        invoke-direct {p0}, Ljava/lang/Object;-><init>()V
        new-instance v0, Ljava/util/ArrayList;
        invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
        iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->fpsHistory:Ljava/util/List;
        return-void
    .end method
    
    .method public updateAverageFPS()V
        .locals 4
        iget v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->currentFPS:I
        if-lez v0, :cond_0
        iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->fpsHistory:Ljava/util/List;
        iget v1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->currentFPS:I
        invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
        move-result-object v1
        invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
        iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->fpsHistory:Ljava/util/List;
        invoke-interface {v0}, Ljava/util/List;->size()I
        move-result v0
        const/16 v1, 0x3c
        if-le v0, v1, :cond_0
        iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->fpsHistory:Ljava/util/List;
        const/4 v1, 0x0
        invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
        :cond_0
        const/4 v0, 0x0
        iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->fpsHistory:Ljava/util/List;
        invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
        move-result-object v2
        :goto_0
        invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
        move-result v3
        if-nez v3, :cond_1
        iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->fpsHistory:Ljava/util/List;
        invoke-interface {v2}, Ljava/util/List;->size()I
        move-result v2
        div-int v2, v0, v2
        iput v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/RenderOptimizer$RenderStatistics;->averageFPS:I
        return-void
        :cond_1
        invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
        move-result-object v3
        check-cast v3, Ljava/lang/Integer;
        invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
        move-result v3
        add-int/2addr v0, v3
        goto :goto_0
    .end method
.end method