.class public Lorg/loon/framework/android/game/core/graphics/Desktop;
.super Ljava/lang/Object;
.source "Desktop.java"


# static fields
.field public static final EMPTY_DESKTOP:Lorg/loon/framework/android/game/core/graphics/Desktop;


# instance fields
.field private clickComponent:[Lorg/loon/framework/android/game/core/graphics/LComponent;

.field private contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

.field private hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

.field protected final input:Lorg/loon/framework/android/game/core/LInput;

.field private modal:Lorg/loon/framework/android/game/core/graphics/LComponent;

.field private selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

.field private uiConfig:Lorg/loon/framework/android/game/core/graphics/window/UIConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/Desktop;->EMPTY_DESKTOP:Lorg/loon/framework/android/game/core/graphics/Desktop;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, v1, [Lorg/loon/framework/android/game/core/graphics/LComponent;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->clickComponent:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 76
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/LPanel;

    invoke-direct {v0, v2, v2, v1, v1}, Lorg/loon/framework/android/game/core/graphics/window/LPanel;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    .line 78
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->uiConfig:Lorg/loon/framework/android/game/core/graphics/window/UIConfig;

    .line 79
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->setDesktop(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/LInput;II)V
    .locals 2
    .param p1, "input"    # Lorg/loon/framework/android/game/core/LInput;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/loon/framework/android/game/core/graphics/LComponent;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->clickComponent:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 65
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/LPanel;

    invoke-direct {v0, v1, v1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/LPanel;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    .line 66
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    .line 67
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/LUI;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/LUI;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->uiConfig:Lorg/loon/framework/android/game/core/graphics/window/UIConfig;

    .line 68
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->setDesktop(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 69
    return-void
.end method

.method private findComponent(II)Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 262
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->modal:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->modal:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isContainer()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->modal:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-nez v2, :cond_1

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    .line 268
    .local v1, "panel":Lorg/loon/framework/android/game/core/graphics/LContainer;
    :goto_1
    invoke-virtual {v1, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->findComponent(II)Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 269
    .local v0, "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    goto :goto_0

    .line 267
    .end local v0    # "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    .end local v1    # "panel":Lorg/loon/framework/android/game/core/graphics/LContainer;
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->modal:Lorg/loon/framework/android/game/core/graphics/LComponent;

    check-cast v2, Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-object v1, v2

    goto :goto_1
.end method

.method private installUI(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 4
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 523
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->uiConfig:Lorg/loon/framework/android/game/core/graphics/window/UIConfig;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getUIName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->createUIFactory(Ljava/lang/String;)Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setUIRenderer(Lorg/loon/framework/android/game/core/graphics/window/UIFactory;)V

    .line 524
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    check-cast p1, Lorg/loon/framework/android/game/core/graphics/LContainer;

    .end local p1    # "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 526
    .local v0, "childs":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 530
    .end local v0    # "childs":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 527
    .restart local v0    # "childs":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    .restart local v1    # "i":I
    :cond_1
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->installUI(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private processEvents()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->processTouchMotionEvent()V

    .line 164
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->processTouchEvent()V

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->processKeyEvent()V

    .line 173
    :cond_1
    return-void
.end method

.method private processKeyEvent()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 245
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getKeyPressed()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->keyPressed()V

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getKeyReleased()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 249
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processKeyReleased()V

    .line 252
    :cond_1
    return-void
.end method

.method private processTouchEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 219
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchPressed()I

    move-result v0

    .local v0, "pressed":I
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    .line 220
    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchReleased()I

    move-result v1

    .line 221
    .local v1, "released":I
    if-le v0, v4, :cond_1

    .line 222
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processTouchPressed()V

    .line 223
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->clickComponent:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    aput-object v3, v2, v5

    .line 224
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 226
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-eq v2, v3, :cond_1

    .line 227
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectComponent(Lorg/loon/framework/android/game/core/graphics/LComponent;)Z

    .line 231
    :cond_1
    if-le v1, v4, :cond_2

    .line 232
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processTouchReleased()V

    .line 234
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->clickComponent:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v2, v2, v5

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-ne v2, v3, :cond_2

    .line 235
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processTouchClicked()V

    .line 238
    :cond_2
    return-void
.end method

.method private processTouchMotionEvent()V
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v1}, Lorg/loon/framework/android/game/core/LInput;->isMoving()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v1}, Lorg/loon/framework/android/game/core/LInput;->getTouchDY()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v1}, Lorg/loon/framework/android/game/core/LInput;->getTouchDY()I

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processTouchDragged()V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v1}, Lorg/loon/framework/android/game/core/LInput;->getTouchX()I

    move-result v1

    .line 189
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchY()I

    move-result v2

    .line 188
    invoke-direct {p0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->findComponent(II)Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 190
    .local v0, "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    if-eqz v0, :cond_7

    .line 191
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v1}, Lorg/loon/framework/android/game/core/LInput;->getTouchDX()I

    move-result v1

    if-nez v1, :cond_3

    .line 192
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v1}, Lorg/loon/framework/android/game/core/LInput;->getTouchDY()I

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    :cond_3
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processTouchMoved()V

    .line 196
    :cond_4
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-nez v1, :cond_6

    .line 197
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processTouchEntered()V

    .line 210
    :cond_5
    :goto_1
    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    goto :goto_0

    .line 199
    :cond_6
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-eq v0, v1, :cond_5

    .line 200
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processTouchExited()V

    .line 201
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processTouchEntered()V

    goto :goto_1

    .line 205
    :cond_7
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-eqz v1, :cond_5

    .line 206
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processTouchExited()V

    goto :goto_1
.end method

.method private removeComponent(Lorg/loon/framework/android/game/core/graphics/LContainer;Ljava/lang/Class;)I
    .locals 4
    .param p1, "container"    # Lorg/loon/framework/android/game/core/graphics/LContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/loon/framework/android/game/core/graphics/LContainer;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/LComponent;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    invoke-virtual {p1, p2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->remove(Ljava/lang/Class;)I

    move-result v2

    .line 127
    .local v2, "removed":I
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 128
    .local v0, "components":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    const/4 v1, 0x0

    .line 129
    .local v1, "i":I
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_1

    .line 136
    :cond_0
    return v2

    .line 130
    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isContainer()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    aget-object v3, v0, v1

    check-cast v3, Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-direct {p0, v3, p2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->removeComponent(Lorg/loon/framework/android/game/core/graphics/LContainer;Ljava/lang/Class;)I

    move-result v2

    .line 134
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removeComponent(Lorg/loon/framework/android/game/core/graphics/LContainer;Lorg/loon/framework/android/game/core/graphics/LComponent;)I
    .locals 4
    .param p1, "container"    # Lorg/loon/framework/android/game/core/graphics/LContainer;
    .param p2, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 110
    invoke-virtual {p1, p2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->remove(Lorg/loon/framework/android/game/core/graphics/LComponent;)I

    move-result v2

    .line 111
    .local v2, "removed":I
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 112
    .local v0, "components":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    const/4 v1, 0x0

    .line 113
    .local v1, "i":I
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_1

    .line 121
    :cond_0
    return v2

    .line 114
    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isContainer()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    aget-object v3, v0, v1

    check-cast v3, Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-direct {p0, v3, p2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->removeComponent(Lorg/loon/framework/android/game/core/graphics/LContainer;Lorg/loon/framework/android/game/core/graphics/LComponent;)I

    move-result v2

    .line 118
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 2
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-boolean v0, p1, Lorg/loon/framework/android/game/core/graphics/LComponent;->isFull:Z

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/LInput;->setRepaintMode(I)V

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->add(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 90
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->processTouchMotionEvent()V

    goto :goto_0
.end method

.method clearComponentsStat([Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 5
    .param p1, "comp"    # [Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 352
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/Desktop;->EMPTY_DESKTOP:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-ne p0, v2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    const/4 v0, 0x0

    .line 357
    .local v0, "checkTouchMotion":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_2

    .line 370
    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->processTouchMotionEvent()V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v3, p1, v1

    if-ne v2, v3, :cond_3

    .line 359
    const/4 v0, 0x1

    .line 362
    :cond_3
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v3, p1, v1

    if-ne v2, v3, :cond_4

    .line 363
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->deselectComponent()V

    .line 366
    :cond_4
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->clickComponent:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public clearFocus()V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->deselectComponent()V

    .line 277
    return-void
.end method

.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->createUI(Ljavax/microedition/lcdui/Graphics;)V

    .line 154
    return-void
.end method

.method deselectComponent()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setSelected(Z)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 533
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 534
    return-void
.end method

.method public get()Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->get()Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    return-object v0
.end method

.method public getBottomComponent()Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 3

    .prologue
    .line 423
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 424
    .local v0, "components":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    array-length v1, v0

    .line 425
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 426
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    .line 428
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBottomLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;
    .locals 7

    .prologue
    .line 447
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v3

    .line 448
    .local v3, "components":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    array-length v5, v3

    .line 449
    .local v5, "size":I
    const-class v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;

    .line 450
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;>;"
    move v4, v5

    .local v4, "i":I
    :goto_0
    if-gtz v4, :cond_0

    .line 458
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 451
    :cond_0
    add-int/lit8 v6, v4, -0x1

    aget-object v2, v3, v6

    .line 452
    .local v2, "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 453
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 455
    :cond_1
    check-cast v2, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;

    goto :goto_1

    .line 450
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method public getComponents(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/LComponent;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/LComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    if-nez p1, :cond_1

    .line 397
    const/4 v4, 0x0

    .line 410
    :cond_0
    return-object v4

    .line 399
    :cond_1
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v2

    .line 400
    .local v2, "components":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    array-length v5, v2

    .line 401
    .local v5, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    .local v4, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    move v3, v5

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 403
    add-int/lit8 v6, v3, -0x1

    aget-object v1, v2, v6

    .line 404
    .local v1, "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 405
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 406
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 407
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public getContentPane()Lorg/loon/framework/android/game/core/graphics/LContainer;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHoverComponent()Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    return-object v0
.end method

.method public getModal()Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->modal:Lorg/loon/framework/android/game/core/graphics/LComponent;

    return-object v0
.end method

.method public getSelectedComponent()Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    return-object v0
.end method

.method public getTopComponent()Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 414
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 415
    .local v0, "components":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    array-length v1, v0

    .line 416
    .local v1, "size":I
    if-le v1, v3, :cond_0

    .line 417
    aget-object v2, v0, v3

    .line 419
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTopLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;
    .locals 7

    .prologue
    .line 432
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v3

    .line 433
    .local v3, "components":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    array-length v5, v3

    .line 434
    .local v5, "size":I
    const-class v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;

    .line 435
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 443
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 436
    :cond_0
    aget-object v2, v3, v4

    .line 437
    .local v2, "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 438
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 440
    :cond_1
    check-cast v2, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;

    goto :goto_1

    .line 435
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getUIConfig()Lorg/loon/framework/android/game/core/graphics/window/UIConfig;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->uiConfig:Lorg/loon/framework/android/game/core/graphics/window/UIConfig;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getWidth()I

    move-result v0

    return v0
.end method

.method public installUI(Lorg/loon/framework/android/game/core/graphics/window/UIConfig;)V
    .locals 3
    .param p1, "newConfig"    # Lorg/loon/framework/android/game/core/graphics/window/UIConfig;

    .prologue
    .line 511
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->uiConfig:Lorg/loon/framework/android/game/core/graphics/window/UIConfig;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->getInstalledUI()[Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    move-result-object v1

    .line 512
    .local v1, "ui":[Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 518
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->uiConfig:Lorg/loon/framework/android/game/core/graphics/window/UIConfig;

    .line 519
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-direct {p0, v2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->installUI(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 520
    return-void

    .line 513
    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->getUIName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->getUIFactory(Ljava/lang/String;)Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 514
    aget-object v2, v1, v0

    iget-boolean v2, v2, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->immutable:Z

    if-eqz v2, :cond_2

    .line 515
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->setupUI(Lorg/loon/framework/android/game/core/graphics/window/UIFactory;)Z

    .line 512
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/LComponent;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-direct {p0, v1, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->removeComponent(Lorg/loon/framework/android/game/core/graphics/LContainer;Ljava/lang/Class;)I

    move-result v0

    .line 103
    .local v0, "removed":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 104
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->processTouchMotionEvent()V

    .line 106
    :cond_0
    return v0
.end method

.method public remove(Lorg/loon/framework/android/game/core/graphics/LComponent;)I
    .locals 2
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 94
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-direct {p0, v1, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->removeComponent(Lorg/loon/framework/android/game/core/graphics/LContainer;Lorg/loon/framework/android/game/core/graphics/LComponent;)I

    move-result v0

    .line 95
    .local v0, "removed":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->processTouchMotionEvent()V

    .line 98
    :cond_0
    return v0
.end method

.method selectComponent(Lorg/loon/framework/android/game/core/graphics/LComponent;)Z
    .locals 2
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    const/4 v0, 0x1

    .line 294
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    .line 299
    :cond_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->deselectComponent()V

    .line 302
    invoke-virtual {p1, v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setSelected(Z)V

    .line 303
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    goto :goto_0
.end method

.method setComponentStat(Lorg/loon/framework/android/game/core/graphics/LComponent;Z)V
    .locals 6
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p2, "active"    # Z

    .prologue
    const/4 v5, 0x0

    .line 319
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/Desktop;->EMPTY_DESKTOP:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-ne p0, v3, :cond_1

    .line 349
    .end local p1    # "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    :cond_0
    return-void

    .line 323
    .restart local p1    # "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    :cond_1
    if-nez p2, :cond_5

    .line 324
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->hoverComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-ne v3, p1, :cond_2

    .line 325
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->processTouchMotionEvent()V

    .line 328
    :cond_2
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectedComponent:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-ne v3, p1, :cond_3

    .line 329
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->deselectComponent()V

    .line 332
    :cond_3
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->clickComponent:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    .line 334
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->modal:Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-ne v3, p1, :cond_4

    .line 335
    iput-object v5, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->modal:Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 342
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isContainer()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 343
    check-cast v3, Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 344
    .local v0, "components":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    check-cast p1, Lorg/loon/framework/android/game/core/graphics/LContainer;

    .end local p1    # "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponentCount()I

    move-result v2

    .line 345
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 346
    aget-object v3, v0, v1

    invoke-virtual {p0, v3, p2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->setComponentStat(Lorg/loon/framework/android/game/core/graphics/LComponent;Z)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    .end local v0    # "components":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    .end local v1    # "i":I
    .end local v2    # "size":I
    .restart local p1    # "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    :cond_5
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->processTouchMotionEvent()V

    goto :goto_0
.end method

.method public setContentPane(Lorg/loon/framework/android/game/core/graphics/LContainer;)V
    .locals 7
    .param p1, "pane"    # Lorg/loon/framework/android/game/core/graphics/LContainer;

    .prologue
    const-wide/16 v1, 0x0

    .line 477
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getHeight()I

    move-result v6

    move-object v0, p1

    move-wide v3, v1

    invoke-virtual/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/LContainer;->setBounds(DDII)V

    .line 478
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    .line 479
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->setDesktop(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 480
    return-void
.end method

.method setDesktop(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 3
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 309
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 310
    check-cast v2, Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 311
    .local v0, "child":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 315
    .end local v0    # "child":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setDesktop(Lorg/loon/framework/android/game/core/graphics/Desktop;)V

    .line 316
    return-void

    .line 312
    .restart local v0    # "child":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    .restart local v1    # "i":I
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->setDesktop(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setModal(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 2
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 495
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/RuntimeException;

    .line 497
    const-string v1, "Can\'t set invisible component as modal component!"

    .line 496
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->modal:Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 500
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->setSize(II)V

    .line 470
    return-void
.end method

.method public update(J)V
    .locals 1
    .param p1, "timer"    # J

    .prologue
    .line 144
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->processEvents()V

    .line 149
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->update(J)V

    goto :goto_0
.end method

.method final validateContainer(Lorg/loon/framework/android/game/core/graphics/LContainer;)V
    .locals 4
    .param p1, "container"    # Lorg/loon/framework/android/game/core/graphics/LContainer;

    .prologue
    .line 380
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getUIResource()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 381
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->createUI()V

    .line 383
    :cond_0
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 384
    .local v0, "components":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponentCount()I

    move-result v2

    .line 385
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 393
    return-void

    .line 386
    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getUIResource()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 387
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createUI()V

    .line 389
    :cond_2
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isContainer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 390
    aget-object v3, v0, v1

    check-cast v3, Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {p0, v3}, Lorg/loon/framework/android/game/core/graphics/Desktop;->validateContainer(Lorg/loon/framework/android/game/core/graphics/LContainer;)V

    .line 385
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public validateUI()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Desktop;->contentPane:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->validateContainer(Lorg/loon/framework/android/game/core/graphics/LContainer;)V

    .line 377
    return-void
.end method
