.class public Lcom/netease/ntunisdk/UniTwitterApiClient;
.super Lcom/twitter/sdk/android/core/TwitterApiClient;
.source "UniTwitterApiClient.java"


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterSession;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/TwitterApiClient;-><init>(Lcom/twitter/sdk/android/core/TwitterSession;)V

    return-void
.end method


# virtual methods
.method public getFollowersService()Lcom/netease/ntunisdk/services/FollowersService;
    .locals 1

    .line 24
    const-class v0, Lcom/netease/ntunisdk/services/FollowersService;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/services/FollowersService;

    return-object v0
.end method

.method public getFriendsService()Lcom/netease/ntunisdk/services/FriendsService;
    .locals 1

    .line 20
    const-class v0, Lcom/netease/ntunisdk/services/FriendsService;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/services/FriendsService;

    return-object v0
.end method

.method public getMediaFinalService()Lcom/netease/ntunisdk/services/MediaFinalService;
    .locals 1

    .line 44
    const-class v0, Lcom/netease/ntunisdk/services/MediaFinalService;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/services/MediaFinalService;

    return-object v0
.end method

.method public getMediaInitService()Lcom/netease/ntunisdk/services/MediaInitService;
    .locals 1

    .line 40
    const-class v0, Lcom/netease/ntunisdk/services/MediaInitService;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/services/MediaInitService;

    return-object v0
.end method

.method public getMediaStatusService()Lcom/netease/ntunisdk/services/MediaStatusService;
    .locals 1

    .line 48
    const-class v0, Lcom/netease/ntunisdk/services/MediaStatusService;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/services/MediaStatusService;

    return-object v0
.end method

.method public getStatusesCardServices()Lcom/netease/ntunisdk/services/StatusesCardServices;
    .locals 1

    .line 36
    const-class v0, Lcom/netease/ntunisdk/services/StatusesCardServices;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/services/StatusesCardServices;

    return-object v0
.end method

.method public getStatusesMediaServices()Lcom/netease/ntunisdk/services/StatusesMediaServices;
    .locals 1

    .line 52
    const-class v0, Lcom/netease/ntunisdk/services/StatusesMediaServices;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/services/StatusesMediaServices;

    return-object v0
.end method

.method public getStatusesPlusServices()Lcom/netease/ntunisdk/services/StatusesPlusServices;
    .locals 1

    .line 32
    const-class v0, Lcom/netease/ntunisdk/services/StatusesPlusServices;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/services/StatusesPlusServices;

    return-object v0
.end method

.method public getUsersService()Lcom/netease/ntunisdk/services/UsersService;
    .locals 1

    .line 28
    const-class v0, Lcom/netease/ntunisdk/services/UsersService;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/services/UsersService;

    return-object v0
.end method
