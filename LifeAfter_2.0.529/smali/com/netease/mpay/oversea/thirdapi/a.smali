.class public Lcom/netease/mpay/oversea/thirdapi/a;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "AmazonApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/thirdapi/a$c;
    }
.end annotation


# instance fields
.field private d:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

.field private e:Lcom/netease/mpay/oversea/thirdapi/a$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->getUser()Lcom/amazon/identity/auth/device/api/authorization/User;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->getUser()Lcom/amazon/identity/auth/device/api/authorization/User;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/authorization/User;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1, v0, v2}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v0, -0x3

    const-string v1, "token is null"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/a;Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/a;->a(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;)V

    return-void
.end method

.method private b(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/a;->h()[Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lcom/netease/mpay/oversea/thirdapi/a$b;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/thirdapi/a$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/a;)V

    invoke-static {p1, v0, p2}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->getToken(Landroid/content/Context;[Lcom/amazon/identity/auth/device/api/authorization/Scope;Lcom/amazon/identity/auth/device/api/Listener;)V

    goto :goto_0

    :cond_0
    const-string p1, "amazon service: authorize"

    .line 25
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 26
    new-instance p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;

    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/a;->d:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;-><init>(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->addScopes([Lcom/amazon/identity/auth/device/api/authorization/Scope;)Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->build()Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->authorize(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;)V

    :goto_0
    return-void
.end method

.method private h()[Lcom/amazon/identity/auth/device/api/authorization/Scope;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    sget-object v2, Lcom/netease/mpay/oversea/g6;->r:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/i9;->d(Lcom/netease/mpay/oversea/g6;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "profile"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/amazon/identity/auth/device/api/authorization/ProfileScope;->profile()Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "profile:user_id"

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-static {}, Lcom/amazon/identity/auth/device/api/authorization/ProfileScope;->userId()Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "postal_code"

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, Lcom/amazon/identity/auth/device/api/authorization/ProfileScope;->postalCode()Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    new-array v0, v2, [Lcom/amazon/identity/auth/device/api/authorization/Scope;

    .line 15
    invoke-static {}, Lcom/amazon/identity/auth/device/api/authorization/ProfileScope;->profile()Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0

    .line 17
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/identity/auth/device/api/authorization/Scope;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/authorization/Scope;

    return-object v0
.end method


# virtual methods
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

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 6
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "access_token"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/a;->h()[Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/a$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/a$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/a;)V

    invoke-static {p1, v0, v1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->getToken(Landroid/content/Context;[Lcom/amazon/identity/auth/device/api/authorization/Scope;Lcom/amazon/identity/auth/device/api/Listener;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 2

    .line 7
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->create(Landroid/app/Activity;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/a;->d:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/a;->e:Lcom/netease/mpay/oversea/thirdapi/a$c;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/oversea/thirdapi/a$c;-><init>(Lcom/netease/mpay/oversea/thirdapi/a;Lcom/netease/mpay/oversea/thirdapi/a$a;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/a;->e:Lcom/netease/mpay/oversea/thirdapi/a$c;

    .line 10
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/a$c;->a()V

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/a;->d:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/a;->e:Lcom/netease/mpay/oversea/thirdapi/a$c;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->registerListener(Lcom/amazon/identity/auth/device/interactive/InteractiveListener;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/a$c;->a()V

    .line 15
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/a;->b(Landroid/app/Activity;Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/p;->onCancel()V

    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/a;->d:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->onResume()V

    :cond_0
    return-void
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->r:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
