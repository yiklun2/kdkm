.class public Lcom/badlogic/gdx/physics/box2d/ContactList;
.super Ljava/lang/Object;
.source "ContactList.java"


# instance fields
.field private final contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/ContactList;->contacts:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method protected add(J)V
    .locals 0
    .param p1, "addr"    # J

    .prologue
    .line 22
    return-void
.end method

.method public get(I)Lcom/badlogic/gdx/physics/box2d/Contact;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/ContactList;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Contact;

    return-object v0
.end method

.method protected remove(J)V
    .locals 0
    .param p1, "addr"    # J

    .prologue
    .line 27
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/ContactList;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
