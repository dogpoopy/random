.class Lcom/netease/mrzhna/InputView$7;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/InputView;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/InputView;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/InputView;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/netease/mrzhna/InputView$7;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 245
    iget-object p2, p0, Lcom/netease/mrzhna/InputView$7;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/mrzhna/InputView;->inputFinish(Z)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method
