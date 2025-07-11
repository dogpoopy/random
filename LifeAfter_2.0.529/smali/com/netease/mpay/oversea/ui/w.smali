.class public Lcom/netease/mpay/oversea/ui/w;
.super Ljava/lang/Object;
.source "WebVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/w$b;,
        Lcom/netease/mpay/oversea/ui/w$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Boolean;

.field private b:Landroid/app/Activity;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/netease/mpay/oversea/j;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/j;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/w;->b:Landroid/app/Activity;

    .line 3
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/w;->a:Ljava/lang/Boolean;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/ui/w;->c:Z

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/w;->d:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/w;->e:Lcom/netease/mpay/oversea/j;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/w;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/w;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/j;)Lcom/netease/mpay/oversea/j;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/w;->e:Lcom/netease/mpay/oversea/j;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/w;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/w;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/w;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/w;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/w;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/w;->a:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w;->b:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/w$b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/ui/w$b;-><init>(Lcom/netease/mpay/oversea/ui/w;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w;->a:Ljava/lang/Boolean;

    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    :try_start_1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 15
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/ui/w;->c:Z

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w;->d:Ljava/lang/String;

    return-object p1

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w;->e:Lcom/netease/mpay/oversea/j;

    sget-object v0, Lcom/netease/mpay/oversea/d;->a:Lcom/netease/mpay/oversea/d;

    iput-object v0, p1, Lcom/netease/mpay/oversea/j;->d:Lcom/netease/mpay/oversea/d;

    .line 20
    new-instance p1, Lcom/netease/mpay/oversea/w5;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w;->e:Lcom/netease/mpay/oversea/j;

    invoke-direct {p1, v0}, Lcom/netease/mpay/oversea/w5;-><init>(Lcom/netease/mpay/oversea/j;)V

    throw p1

    .line 21
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 22
    throw p1
.end method
