.class public Lcom/netease/mpay/oversea/thirdapi/n;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "LineGameApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/thirdapi/n$k;
    }
.end annotation


# static fields
.field static d:Lcom/netease/mpay/oversea/thirdapi/n$k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/n$k;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    return-void
.end method

.method private a(ILcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 1

    .line 58
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/n$h;

    invoke-direct {v0, p0, p2, p1}, Lcom/netease/mpay/oversea/thirdapi/n$h;-><init>(Lcom/netease/mpay/oversea/thirdapi/n;Lcom/netease/mpay/oversea/SyncApiAuthCallback;I)V

    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/n$d;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/thirdapi/n$d;-><init>(Lcom/netease/mpay/oversea/thirdapi/n;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/n;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/n;->a(ILcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/n;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/n;->a(Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/oversea/thirdapi/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/netease/mpay/oversea/thirdapi/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
    .locals 7

    .line 32
    new-instance v6, Lcom/netease/mpay/oversea/thirdapi/n$e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/thirdapi/n$e;-><init>(Lcom/netease/mpay/oversea/thirdapi/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    invoke-static {v6}, Lcom/netease/mpay/oversea/thirdapi/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/mpay/oversea/SyncApiAuthCallback;",
            ")V"
        }
    .end annotation

    .line 57
    new-instance v7, Lcom/netease/mpay/oversea/thirdapi/n$g;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/oversea/thirdapi/n$g;-><init>(Lcom/netease/mpay/oversea/thirdapi/n;Lcom/netease/mpay/oversea/SyncApiAuthCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    invoke-static {v7}, Lcom/netease/mpay/oversea/thirdapi/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "line_game_ver"

    const-string v2, "v3.0"

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 103
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "access_token"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/n$j;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/n$j;-><init>(Lcom/netease/mpay/oversea/thirdapi/n;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$h;)Lcom/netease/mpay/oversea/thirdapi/n$k;

    .line 97
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;-><init>()V

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/n$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/n$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/n;)V

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/n$b;

    invoke-direct {v1, p0, p3, p2}, Lcom/netease/mpay/oversea/thirdapi/n$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/n;Lcom/netease/mpay/oversea/CheckApiAuthCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$h;)Lcom/netease/mpay/oversea/thirdapi/n$k;

    .line 29
    sget-object p2, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 30
    new-instance p2, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;-><init>()V

    new-instance p3, Lcom/netease/mpay/oversea/thirdapi/n$c;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/thirdapi/n$c;-><init>(Lcom/netease/mpay/oversea/thirdapi/n;)V

    invoke-virtual {p2, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 2

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xcb

    .line 34
    invoke-direct {p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/n;->a(ILcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 37
    :cond_0
    :try_start_1
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/n$f;

    invoke-direct {v1, p0, p3, p2}, Lcom/netease/mpay/oversea/thirdapi/n$f;-><init>(Lcom/netease/mpay/oversea/thirdapi/n;Lcom/netease/mpay/oversea/SyncApiAuthCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$h;)Lcom/netease/mpay/oversea/thirdapi/n$k;

    .line 55
    sget-object p2, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 56
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->login(Landroid/app/Activity;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;Z)V
    .locals 2

    monitor-enter p0

    .line 59
    :try_start_0
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/n$i;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/n$i;-><init>(Lcom/netease/mpay/oversea/thirdapi/n;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$h;)Lcom/netease/mpay/oversea/thirdapi/n$k;

    .line 77
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->login(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->u:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
