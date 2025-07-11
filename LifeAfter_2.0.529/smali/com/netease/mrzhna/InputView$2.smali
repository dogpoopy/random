.class Lcom/netease/mrzhna/InputView$2;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 179
    iput-object p1, p0, Lcom/netease/mrzhna/InputView$2;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/netease/mrzhna/InputView$2;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {p1}, Lcom/netease/mrzhna/InputView;->access$100(Lcom/netease/mrzhna/InputView;)I

    move-result p1

    and-int/2addr p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 183
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mrzhna/InputView$2;->this$0:Lcom/netease/mrzhna/InputView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/mrzhna/InputView;->inputFinish(Z)V

    return p2
.end method
