.class Lcom/netease/mrzhna/WelcomeView$UpdateHandler;
.super Landroid/os/Handler;
.source "WelcomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/WelcomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/WelcomeView;


# direct methods
.method public constructor <init>(Lcom/netease/mrzhna/WelcomeView;Landroid/os/Looper;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/netease/mrzhna/WelcomeView$UpdateHandler;->this$0:Lcom/netease/mrzhna/WelcomeView;

    .line 42
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 47
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    iget-object p1, p0, Lcom/netease/mrzhna/WelcomeView$UpdateHandler;->this$0:Lcom/netease/mrzhna/WelcomeView;

    invoke-static {p1}, Lcom/netease/mrzhna/WelcomeView;->access$000(Lcom/netease/mrzhna/WelcomeView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeGetTransferAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeGetFileTransferred()I

    move-result p1

    .line 50
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeGetFileToTransfer()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/netease/mrzhna/WelcomeView$UpdateHandler;->this$0:Lcom/netease/mrzhna/WelcomeView;

    invoke-static {v1}, Lcom/netease/mrzhna/WelcomeView;->access$100(Lcom/netease/mrzhna/WelcomeView;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/mrzhna/WelcomeView;->STR_FILE_TRANSFERRED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/netease/mrzhna/WelcomeView;->STR_FILE_TOTRANSFER:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
