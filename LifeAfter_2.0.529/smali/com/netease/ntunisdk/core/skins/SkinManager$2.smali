.class final Lcom/netease/ntunisdk/core/skins/SkinManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/core/skins/SkinManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/core/skins/SkinManager;->init(Landroid/app/Activity;Lcom/netease/ntunisdk/core/skins/SkinManager$SkinInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/netease/ntunisdk/core/skins/SkinManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/skins/SkinManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$2;->b:Lcom/netease/ntunisdk/core/skins/SkinManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$2;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/netease/ntunisdk/core/skins/Skin;Lcom/netease/ntunisdk/core/skins/Skin;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$2;->b:Lcom/netease/ntunisdk/core/skins/SkinManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->c(Lcom/netease/ntunisdk/core/skins/SkinManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$2;->b:Lcom/netease/ntunisdk/core/skins/SkinManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->d(Lcom/netease/ntunisdk/core/skins/SkinManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$2;->b:Lcom/netease/ntunisdk/core/skins/SkinManager;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->a(Lcom/netease/ntunisdk/core/skins/SkinManager;Lcom/netease/ntunisdk/core/skins/Skin;)Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$2;->b:Lcom/netease/ntunisdk/core/skins/SkinManager;

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/core/skins/SkinManager;->b(Lcom/netease/ntunisdk/core/skins/SkinManager;Lcom/netease/ntunisdk/core/skins/Skin;)Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$2;->b:Lcom/netease/ntunisdk/core/skins/SkinManager;

    sget p2, Lcom/netease/ntunisdk/core/skins/SkinManager$c;->c:I

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/core/skins/SkinManager;->a(Lcom/netease/ntunisdk/core/skins/SkinManager;I)I

    invoke-static {}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->getInstance()Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->loadSounds()Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$2;->b:Lcom/netease/ntunisdk/core/skins/SkinManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->d(Lcom/netease/ntunisdk/core/skins/SkinManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$2;->b:Lcom/netease/ntunisdk/core/skins/SkinManager;

    sget p2, Lcom/netease/ntunisdk/core/skins/SkinManager$c;->a:I

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/core/skins/SkinManager;->a(Lcom/netease/ntunisdk/core/skins/SkinManager;I)I

    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$2;->a:Landroid/os/Handler;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$2;->b:Lcom/netease/ntunisdk/core/skins/SkinManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->a(Lcom/netease/ntunisdk/core/skins/SkinManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
