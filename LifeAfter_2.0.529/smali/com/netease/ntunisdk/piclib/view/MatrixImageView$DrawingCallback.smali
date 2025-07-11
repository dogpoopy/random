.class public interface abstract Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;
.super Ljava/lang/Object;
.source "MatrixImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/view/MatrixImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawingCallback"
.end annotation


# virtual methods
.method public abstract EditTextCallBack(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "color"
        }
    .end annotation
.end method

.method public abstract callback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawing"
        }
    .end annotation
.end method

.method public abstract setEditText(Lcom/netease/ntunisdk/piclib/unit/TextUnit;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tu"
        }
    .end annotation
.end method

.method public abstract setUndoEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnable"
        }
    .end annotation
.end method
