.class public Lcom/netease/ntunisdk/base/SDKManager;
.super Ljava/lang/Object;
.source "SDKManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnExitListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKManager"

.field private static instance:Lcom/netease/ntunisdk/base/SDKManager;


# instance fields
.field private bundleRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private extendFuncCallback:Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;

.field private initCallback:Lcom/netease/ntunisdk/base/callback/InitCallback;

.field private loginCallback:Lcom/netease/ntunisdk/base/callback/LoginCallback;

.field private logoutCallback:Lcom/netease/ntunisdk/base/callback/LogoutCallback;

.field private orderCallback:Lcom/netease/ntunisdk/base/callback/OrderCallback;

.field private shareCallback:Lcom/netease/ntunisdk/base/callback/ShareCallback;

.field private final tmpKeyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->tmpKeyValues:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/InitCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SDKManager;->initCallback:Lcom/netease/ntunisdk/base/callback/InitCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/LoginCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SDKManager;->loginCallback:Lcom/netease/ntunisdk/base/callback/LoginCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/LogoutCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SDKManager;->logoutCallback:Lcom/netease/ntunisdk/base/callback/LogoutCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/OrderCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SDKManager;->orderCallback:Lcom/netease/ntunisdk/base/callback/OrderCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/ShareCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SDKManager;->shareCallback:Lcom/netease/ntunisdk/base/callback/ShareCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SDKManager;->extendFuncCallback:Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;

    return-object p0
.end method

.method private callbackFailOrder(Ljava/lang/String;)V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->orderCallback:Lcom/netease/ntunisdk/base/callback/OrderCallback;

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkState;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>()V

    .line 381
    sget-object v1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    .line 382
    iput-object p1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    .line 383
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->orderCallback:Lcom/netease/ntunisdk/base/callback/OrderCallback;

    iget v1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    iget-object v2, v0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lcom/netease/ntunisdk/base/callback/OrderCallback;->onOrderPurchased(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/base/SDKManager;
    .locals 1

    .line 63
    sget-object v0, Lcom/netease/ntunisdk/base/SDKManager;->instance:Lcom/netease/ntunisdk/base/SDKManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/netease/ntunisdk/base/SDKManager;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/SDKManager;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/SDKManager;->instance:Lcom/netease/ntunisdk/base/SDKManager;

    .line 66
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/SDKManager;->instance:Lcom/netease/ntunisdk/base/SDKManager;

    return-object v0
.end method


# virtual methods
.method public appChannel()Ljava/lang/String;
    .locals 1

    .line 138
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "sdk not init"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exit()V
    .locals 2

    .line 667
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SDKManager"

    const-string v1, "sdk not init"

    .line 668
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 671
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/constant/b;->c:Lcom/netease/ntunisdk/base/constant/b;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/constant/b;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SDKManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenExitView()V

    return-void

    .line 675
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 676
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public exitApp()V
    .locals 1

    .line 684
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 685
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 2

    .line 475
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->extendFuncCallback:Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;

    if-eqz v0, :cond_0

    .line 477
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkState;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>()V

    .line 478
    sget-object v1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    const-string v1, "sdk not init"

    .line 479
    iput-object v1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKManager;->extendFuncCallback:Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/model/SdkModelMerger;->merge(Lcom/netease/ntunisdk/base/model/SdkModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;->onFuncCalled(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 484
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V

    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 493
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 494
    iget-object p2, p0, Lcom/netease/ntunisdk/base/SDKManager;->extendFuncCallback:Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;

    if-eqz p2, :cond_0

    .line 495
    new-instance p2, Lcom/netease/ntunisdk/base/model/SdkState;

    invoke-direct {p2}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>()V

    .line 496
    sget-object v0, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result v0

    iput v0, p2, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    const-string v0, "sdk not init"

    .line 497
    iput-object v0, p2, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->extendFuncCallback:Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/model/SdkModelMerger;->merge(Lcom/netease/ntunisdk/base/model/SdkModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;->onFuncCalled(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 502
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 2

    .line 168
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SDKManager"

    const-string v0, "sdk not init"

    .line 169
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 172
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkFeature;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/model/SdkFeature;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkFeature;->wrapTo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 174
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public inAppPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 345
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "sdk not init"

    .line 346
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SDKManager;->callbackFailOrder(Ljava/lang/String;)V

    return-void

    .line 350
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "not login yet"

    .line 351
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SDKManager;->callbackFailOrder(Ljava/lang/String;)V

    return-void

    .line 355
    :cond_1
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkOrder;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/model/SdkOrder;-><init>(Ljava/lang/String;)V

    .line 356
    new-instance p1, Lcom/netease/ntunisdk/base/model/SdkRole;

    invoke-direct {p1, p2}, Lcom/netease/ntunisdk/base/model/SdkRole;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkOrder;->check()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "invalid json of order info, please check your order json"

    .line 359
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SDKManager;->callbackFailOrder(Ljava/lang/String;)V

    return-void

    .line 363
    :cond_2
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/model/SdkRole;->check()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p1, "invalid json of role info, please check your game role json"

    .line 364
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SDKManager;->callbackFailOrder(Ljava/lang/String;)V

    return-void

    .line 368
    :cond_3
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkOrder;->wrapTo()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/base/OrderInfo;

    .line 369
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/model/SdkRole;->wrapTo()Ljava/lang/Object;

    .line 370
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public login()V
    .locals 4

    .line 214
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->loginCallback:Lcom/netease/ntunisdk/base/callback/LoginCallback;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkState;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>()V

    .line 217
    sget-object v1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    const-string v1, "sdk not init"

    .line 218
    iput-object v1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKManager;->loginCallback:Lcom/netease/ntunisdk/base/callback/LoginCallback;

    iget v2, v0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    iget-object v3, v0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/netease/ntunisdk/base/callback/LoginCallback;->onLoginDone(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 223
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogin()V

    return-void
.end method

.method public logout()V
    .locals 4

    .line 259
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->logoutCallback:Lcom/netease/ntunisdk/base/callback/LogoutCallback;

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkState;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>()V

    .line 262
    sget-object v1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    const-string v1, "sdk not init"

    .line 263
    iput-object v1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKManager;->logoutCallback:Lcom/netease/ntunisdk/base/callback/LogoutCallback;

    iget v2, v0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    iget-object v3, v0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/netease/ntunisdk/base/callback/LogoutCallback;->onLogoutDone(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 268
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogout()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 611
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SDKManager"

    const-string p2, "sdk not init"

    .line 612
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 614
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 654
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SDKManager"

    const-string v0, "sdk not init"

    .line 655
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 657
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 512
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SDKManager"

    const-string v1, "sdk not init, sdk will do it when sdkInit finish"

    .line 513
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->bundleRef:Ljava/lang/ref/WeakReference;

    return-void

    .line 516
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 517
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->bundleRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 580
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SDKManager"

    const-string v1, "sdk not init"

    .line 581
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->destroyInst()V

    const/4 v0, 0x0

    .line 585
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 596
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SDKManager"

    const-string v0, "sdk not init"

    .line 597
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 599
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOpenExitViewFailed()V
    .locals 14

    const-string v0, "SDKManager"

    const-string v1, "onOpenExitViewFailed"

    .line 692
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "export_ef_alert_title"

    const-string v2, "string"

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 696
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "export_ef_alert_message"

    invoke-static {v1, v3, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 697
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string v4, "export_ef_alert_confirm"

    invoke-static {v3, v4, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 698
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const-string v5, "export_ef_alert_cancel"

    invoke-static {v4, v5, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 699
    new-instance v4, Lcom/netease/ntunisdk/base/view/Alerter;

    iget-object v5, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/netease/ntunisdk/base/view/Alerter;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    .line 700
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    .line 701
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    .line 702
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/netease/ntunisdk/base/SDKManager$7;

    invoke-direct {v8, p0}, Lcom/netease/ntunisdk/base/SDKManager$7;-><init>(Lcom/netease/ntunisdk/base/SDKManager;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    .line 709
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 699
    invoke-virtual/range {v4 .. v13}, Lcom/netease/ntunisdk/base/view/Alerter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZLcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 558
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SDKManager"

    const-string v1, "sdk not init"

    .line 559
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 561
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 641
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SDKManager"

    const-string p2, "sdk not init"

    .line 642
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 644
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 536
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SDKManager"

    const-string v1, "sdk not init"

    .line 537
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 539
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnRestart()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 547
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SDKManager"

    const-string v1, "sdk not init"

    .line 548
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 550
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 525
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SDKManager"

    const-string v1, "sdk not init"

    .line 526
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 528
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 569
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SDKManager"

    const-string v1, "sdk not init"

    .line 570
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 572
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 624
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SDKManager"

    const-string v0, "sdk not init"

    .line 625
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 627
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnWindowFocusChanged(Z)V

    return-void
.end method

.method public openManager()V
    .locals 2

    .line 275
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SDKManager"

    const-string v1, "sdk not init"

    .line 276
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 278
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenManager()V

    return-void
.end method

.method public sdkChannel()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "sdk not init"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sdkInit(Landroid/content/Context;)V
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->contextRef:Ljava/lang/ref/WeakReference;

    .line 85
    invoke-static {p1}, Lcom/netease/ntunisdk/base/SdkMgr;->init(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "UNISDK_JF_GAS3"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 88
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "ENABLE_CLIENT_CHECK_REALNAME"

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 91
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->tmpKeyValues:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->tmpKeyValues:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 96
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/base/SDKManager$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/SDKManager$1;-><init>(Lcom/netease/ntunisdk/base/SDKManager;)V

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    .line 118
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->bundleRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SDKManager;->onCreate(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public sdkVersion()Ljava/lang/String;
    .locals 2

    .line 158
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "sdk not init"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SDKManager;->sdkChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExtendFuncCallback(Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;)V
    .locals 2

    .line 456
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->extendFuncCallback:Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;

    .line 457
    new-instance p1, Lcom/netease/ntunisdk/base/SDKManager$6;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/base/SDKManager$6;-><init>(Lcom/netease/ntunisdk/base/SDKManager;)V

    .line 465
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setExtendFuncListener(Lcom/netease/ntunisdk/base/OnExtendFuncListener;I)V

    return-void
.end method

.method public setInitCallback(Lcom/netease/ntunisdk/base/callback/InitCallback;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->initCallback:Lcom/netease/ntunisdk/base/callback/InitCallback;

    return-void
.end method

.method public setLoginCallback(Lcom/netease/ntunisdk/base/callback/LoginCallback;)V
    .locals 2

    .line 196
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->loginCallback:Lcom/netease/ntunisdk/base/callback/LoginCallback;

    .line 197
    new-instance p1, Lcom/netease/ntunisdk/base/SDKManager$2;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/base/SDKManager$2;-><init>(Lcom/netease/ntunisdk/base/SDKManager;)V

    .line 207
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V

    return-void
.end method

.method public setLogoutCallback(Lcom/netease/ntunisdk/base/callback/LogoutCallback;)V
    .locals 2

    .line 232
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->logoutCallback:Lcom/netease/ntunisdk/base/callback/LogoutCallback;

    .line 233
    new-instance p1, Lcom/netease/ntunisdk/base/SDKManager$3;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/base/SDKManager$3;-><init>(Lcom/netease/ntunisdk/base/SDKManager;)V

    .line 252
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setLogoutListener(Lcom/netease/ntunisdk/base/OnLogoutDoneListener;I)V

    return-void
.end method

.method public setOrderCallback(Lcom/netease/ntunisdk/base/callback/OrderCallback;)V
    .locals 2

    .line 316
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->orderCallback:Lcom/netease/ntunisdk/base/callback/OrderCallback;

    .line 317
    new-instance p1, Lcom/netease/ntunisdk/base/SDKManager$4;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/base/SDKManager$4;-><init>(Lcom/netease/ntunisdk/base/SDKManager;)V

    .line 335
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setOrderListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 183
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->tmpKeyValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setShareCallback(Lcom/netease/ntunisdk/base/callback/ShareCallback;)V
    .locals 2

    .line 416
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->shareCallback:Lcom/netease/ntunisdk/base/callback/ShareCallback;

    .line 417
    new-instance p1, Lcom/netease/ntunisdk/base/SDKManager$5;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/base/SDKManager$5;-><init>(Lcom/netease/ntunisdk/base/SDKManager;)V

    .line 427
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setShareListener(Lcom/netease/ntunisdk/base/OnShareListener;I)V

    return-void
.end method

.method public share(Ljava/lang/String;)V
    .locals 3

    .line 436
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 437
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager;->shareCallback:Lcom/netease/ntunisdk/base/callback/ShareCallback;

    if-eqz p1, :cond_0

    .line 438
    new-instance p1, Lcom/netease/ntunisdk/base/model/SdkState;

    invoke-direct {p1}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>()V

    .line 439
    sget-object v0, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result v0

    iput v0, p1, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    const-string v0, "sdk not init"

    .line 440
    iput-object v0, p1, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager;->shareCallback:Lcom/netease/ntunisdk/base/callback/ShareCallback;

    iget v1, p1, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    iget-object v2, p1, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/model/SdkState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/netease/ntunisdk/base/callback/ShareCallback;->onShareDone(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 445
    :cond_1
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkShare;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/model/SdkShare;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkShare;->wrapTo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/ShareInfo;

    .line 447
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void
.end method

.method public udid()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "sdk not init"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 294
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SDKManager"

    const-string p2, "sdk not init"

    .line 295
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 303
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkRole;

    invoke-direct {v0, p2}, Lcom/netease/ntunisdk/base/model/SdkRole;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkRole;->wrapTo()Ljava/lang/Object;

    .line 305
    new-instance p2, Lcom/netease/ntunisdk/base/model/SdkStage;

    invoke-direct {p2, p1}, Lcom/netease/ntunisdk/base/model/SdkStage;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Lcom/netease/ntunisdk/base/model/SdkStage;->wrap()V

    .line 307
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpLoadUserInfo()V

    return-void
.end method

.method public uploadUserInfoStage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SDKManager;->uploadUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userProtocol(Ljava/lang/String;Z)V
    .locals 2

    .line 399
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "COMPACT_URL"

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "NT_COMPACT_URL_TYPE"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowCompactView(Z)V

    :cond_1
    return-void
.end method

.method public userProtocolWithUrl(Ljava/lang/String;Z)V
    .locals 0

    .line 391
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SDKManager;->userProtocol(Ljava/lang/String;Z)V

    return-void
.end method
