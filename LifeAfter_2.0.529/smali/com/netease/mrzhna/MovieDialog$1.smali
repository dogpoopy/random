.class Lcom/netease/mrzhna/MovieDialog$1;
.super Ljava/lang/Object;
.source "MovieDialog.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/MovieDialog;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/MovieDialog;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/MovieDialog;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/netease/mrzhna/MovieDialog$1;->this$0:Lcom/netease/mrzhna/MovieDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/netease/mrzhna/MovieDialog$1;->this$0:Lcom/netease/mrzhna/MovieDialog;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/netease/mrzhna/MovieDialog;->delayedHide(I)V

    return-void
.end method
