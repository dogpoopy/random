.class final Lcom/netease/ntunisdk/core/skins/SkinManager$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/core/skins/SkinManager;->init(Landroid/app/Activity;Lcom/netease/ntunisdk/core/skins/SkinManager$SkinInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/core/skins/SkinManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/skins/SkinManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$1;->a:Lcom/netease/ntunisdk/core/skins/SkinManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$1;->a:Lcom/netease/ntunisdk/core/skins/SkinManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->a(Lcom/netease/ntunisdk/core/skins/SkinManager;)Z

    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$1;->a:Lcom/netease/ntunisdk/core/skins/SkinManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->b(Lcom/netease/ntunisdk/core/skins/SkinManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/core/skins/SkinManager$SkinInitCallback;

    invoke-interface {v0}, Lcom/netease/ntunisdk/core/skins/SkinManager$SkinInitCallback;->onFinish()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager$1;->a:Lcom/netease/ntunisdk/core/skins/SkinManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->b(Lcom/netease/ntunisdk/core/skins/SkinManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
