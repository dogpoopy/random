.class public Lcom/netease/mpay/oversea/c4;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "HuaWeiApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    return-void
.end method

.method private a(Lcom/huawei/hmf/tasks/Task;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;

    .line 15
    invoke-virtual {p1}, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;->getIdToken()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;->getUnionId()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 18
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v0, -0x3

    const-string v1, "Token is null"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 20
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;->getAuthorizedScopes()Ljava/util/Set;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 25
    invoke-virtual {v6}, Lcom/huawei/hms/support/api/entity/auth/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v0, p1, v3

    aput-object v4, p1, v2

    const-string v1, "HUAWEI Login Success: \nidtoken:%s, \nuid:%s"

    .line 27
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-interface {p1, v4, v0, v5}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/common/ApiException;

    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "HUAWEI Login failed: %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/p;->onCancel()V

    goto :goto_1

    .line 37
    :cond_3
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/common/ApiException;

    invoke-virtual {v0}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v0

    .line 38
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/common/ApiException;

    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    const-string v2, "HUAWEI Login failed: %d, message:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-interface {v1, v0, p1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/c4;Lcom/huawei/hmf/tasks/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/c4;->a(Lcom/huawei/hmf/tasks/Task;)V

    return-void
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

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 43
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "id_token"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x22b8

    if-ne p1, p2, :cond_0

    .line 6
    invoke-static {p3}, Lcom/huawei/hms/support/hwid/HuaweiIdAuthManager;->parseAuthResultFromIntent(Landroid/content/Intent;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/c4;->a(Lcom/huawei/hmf/tasks/Task;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 8
    new-instance v0, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;

    sget-object v1, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;->DEFAULT_AUTH_REQUEST_PARAM:Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;-><init>(Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)V

    invoke-virtual {v0}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;->setIdToken()Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;->createParams()Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/huawei/hms/support/hwid/HuaweiIdAuthManager;->getService(Landroid/app/Activity;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;->silentSignIn()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/netease/mpay/oversea/c4$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/c4$a;-><init>(Lcom/netease/mpay/oversea/c4;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnCompleteListener(Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 1

    .line 2
    new-instance p2, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;

    sget-object v0, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;->DEFAULT_AUTH_REQUEST_PARAM:Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    invoke-direct {p2, v0}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;-><init>(Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)V

    .line 3
    invoke-virtual {p2}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;->setIdToken()Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;->createParams()Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lcom/huawei/hms/support/hwid/HuaweiIdAuthManager;->getService(Landroid/app/Activity;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;->getSignInIntent()Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x22b8

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->n:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
