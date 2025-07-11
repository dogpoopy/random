.class public Lcom/netease/mpay/oversea/g5;
.super Lcom/netease/mpay/oversea/f5;
.source "LinkGoogleGamesApi.java"


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/f5;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/g5;->e:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/g5;->f:Z

    .line 6
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/g5;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method

.method private a(Lcom/google/android/gms/games/GamesSignInClient;)V
    .locals 2

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/g5$a;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/g5$a;-><init>(Lcom/netease/mpay/oversea/g5;Lcom/google/android/gms/games/GamesSignInClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/g5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/g5;->d:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/g5;->d:Landroid/app/Activity;

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->o(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/g5;->g:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGamesSdk;->initialize(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/g5;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/g5;->f:Z

    .line 12
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
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

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "auth_code"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    new-instance p2, Lcom/netease/mpay/oversea/a0;

    const-string v0, "api_type"

    const-string v1, "games_v2"

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance p2, Lcom/netease/mpay/oversea/a0;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/g5;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alias_type"

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {}, Lcom/netease/mpay/oversea/e5;->b()Lcom/netease/mpay/oversea/e5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/e5;->a()Lcom/netease/mpay/oversea/f8;

    move-result-object p2

    .line 25
    :try_start_0
    iget-object p2, p2, Lcom/netease/mpay/oversea/f8;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p2, 0x0

    .line 29
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "user_id"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/google/android/gms/games/GamesSignInClient;->isAuthenticated()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/g5$b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/g5$b;-><init>(Lcom/netease/mpay/oversea/g5;Lcom/google/android/gms/games/GamesSignInClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/mpay/oversea/q0<",
            "Lcom/netease/mpay/oversea/f8;",
            ">;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/netease/mpay/oversea/g5$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/oversea/g5$c;-><init>(Lcom/netease/mpay/oversea/g5;Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 0

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/g5;->a(Lcom/google/android/gms/games/GamesSignInClient;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/g5;->e:Z

    return-void
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/g6;->P:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/g5;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/g5;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "PGS"

    return-object v0
.end method
