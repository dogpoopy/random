.class Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;
.super Ljava/lang/Object;
.source "MediaPlayerLoader.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "format",
            "width",
            "height"
        }
    .end annotation

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->access$000(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 101
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->access$000(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 111
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->access$100(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->access$100(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;->onSurfaceDestroyed()V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->access$000(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 113
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->access$000(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->access$000(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->access$000(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    :cond_2
    return-void
.end method
