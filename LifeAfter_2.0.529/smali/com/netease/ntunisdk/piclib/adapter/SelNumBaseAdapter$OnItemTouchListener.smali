.class public interface abstract Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;
.super Ljava/lang/Object;
.source "SelNumBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemTouchListener"
.end annotation


# virtual methods
.method public abstract onItemClick(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entity",
            "adapter",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;I)V"
        }
    .end annotation
.end method

.method public abstract onItemSelected(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entity",
            "adapter",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;I)V"
        }
    .end annotation
.end method
