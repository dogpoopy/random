.class Lcom/netease/mrzhna/WelcomeView$1;
.super Ljava/util/TimerTask;
.source "WelcomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/WelcomeView;->RestartTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/WelcomeView;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/WelcomeView;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/netease/mrzhna/WelcomeView$1;->this$0:Lcom/netease/mrzhna/WelcomeView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 142
    new-instance v0, Lcom/netease/mrzhna/WelcomeView$UpdateHandler;

    iget-object v1, p0, Lcom/netease/mrzhna/WelcomeView$1;->this$0:Lcom/netease/mrzhna/WelcomeView;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mrzhna/WelcomeView$UpdateHandler;-><init>(Lcom/netease/mrzhna/WelcomeView;Landroid/os/Looper;)V

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
