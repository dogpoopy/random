.class public Lcom/netease/mcount/listener/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/app/Activity;",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mcount/listener/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mcount/listener/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mcount/listener/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mcount/listener/a;->c:Ljava/util/HashMap;

    invoke-static {}, Lcom/netease/mcount/listener/f;->a()Lcom/netease/mcount/listener/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mcount/listener/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mcount/listener/b;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mcount/listener/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/netease/mcount/listener/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mcount/listener/a$1;

    invoke-direct {v1, p0, v0}, Lcom/netease/mcount/listener/a$1;-><init>(Lcom/netease/mcount/listener/a;Landroid/view/View;)V

    iget-object v2, p0, Lcom/netease/mcount/listener/a;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mcount/listener/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/netease/mcount/listener/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mcount/listener/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/netease/mcount/f/h;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mcount/listener/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    invoke-static {}, Lcom/netease/mcount/a/f;->a()Lcom/netease/mcount/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/a/f;->a(Landroid/content/Context;)Lcom/netease/mcount/listener/ITrackerHelper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/netease/mcount/listener/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/netease/mcount/listener/ITrackerHelper;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mcount/listener/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/netease/mcount/listener/ITrackerHelper;->getLibTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/netease/mcount/listener/ITrackerHelper;->isIgnored()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/mcount/listener/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/listener/a;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume: pageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, p1}, Lcom/netease/mcount/listener/ITrackerHelper;->getTrackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/netease/mcount/listener/a;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
