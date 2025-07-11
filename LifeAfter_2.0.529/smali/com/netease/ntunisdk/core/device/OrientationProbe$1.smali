.class final Lcom/netease/ntunisdk/core/device/OrientationProbe$1;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/core/device/OrientationProbe;->setOrientationListener(Landroid/app/Activity;Lcom/netease/ntunisdk/core/device/OnOrientationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/ntunisdk/core/device/OrientationProbe;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/device/OrientationProbe;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->b:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    iput-object p3, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->a:Landroid/app/Activity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->b:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a(Lcom/netease/ntunisdk/core/device/OrientationProbe;)Landroid/view/WindowManager;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a()Lcom/netease/ntunisdk/core/device/OrientationProbe;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->destroy(Landroid/app/Activity;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->b:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    iget-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a(Lcom/netease/ntunisdk/core/device/OrientationProbe;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->b:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a(Lcom/netease/ntunisdk/core/device/OrientationProbe;)Landroid/view/WindowManager;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->b:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a(Lcom/netease/ntunisdk/core/device/OrientationProbe;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->b:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a(Lcom/netease/ntunisdk/core/device/OrientationProbe;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->b:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    invoke-static {v0}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->b(Lcom/netease/ntunisdk/core/device/OrientationProbe;)I

    move-result v0

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->b:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a(Lcom/netease/ntunisdk/core/device/OrientationProbe;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onOrientationChanged:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->b:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    invoke-static {v0}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->b(Lcom/netease/ntunisdk/core/device/OrientationProbe;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->b:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->c(Lcom/netease/ntunisdk/core/device/OrientationProbe;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/core/device/OnOrientationListener;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;->b:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    invoke-static {v1}, Lcom/netease/ntunisdk/core/device/OrientationProbe;->b(Lcom/netease/ntunisdk/core/device/OrientationProbe;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/core/device/OnOrientationListener;->onOrientationChanged(I)V

    goto :goto_1

    :cond_4
    return-void
.end method
