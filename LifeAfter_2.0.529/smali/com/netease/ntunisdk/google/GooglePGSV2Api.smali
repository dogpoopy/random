.class public Lcom/netease/ntunisdk/google/GooglePGSV2Api;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/Api;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/Api<",
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# static fields
.field private static final RC_ACHIEVEMENT:I

.field private static final RC_CHECK_ACCOUNT:I

.field private static final RC_LEADERBOARD:I

.field private static final RC_SHOW_PROFILE:I

.field private static final RC_SHOW_SHARING_FRIENDS_CONSENT:I

.field private static final TAG:Ljava/lang/String; = "GooglePGSApi_V2"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mCachedType:I

.field private mChannel:Ljava/lang/String;

.field private mHasFriends:Z

.field private mOnQueryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

.field private mWebClientId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x50851504

    .line 35
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->RC_CHECK_ACCOUNT:I

    add-int/lit8 v0, v0, 0x1

    .line 36
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->RC_LEADERBOARD:I

    add-int/lit8 v0, v0, 0x1

    .line 37
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->RC_ACHIEVEMENT:I

    add-int/lit8 v0, v0, 0x1

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->RC_SHOW_SHARING_FRIENDS_CONSENT:I

    add-int/lit8 v0, v0, 0x1

    .line 39
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->RC_SHOW_PROFILE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mHasFriends:Z

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mCachedType:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mOnQueryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/google/GooglePGSV2Api;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mWebClientId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/google/GooglePGSV2Api;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mCachedType:I

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .line 32
    sget v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->RC_SHOW_SHARING_FRIENDS_CONSENT:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 32
    sget v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->RC_ACHIEVEMENT:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 32
    sget v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->RC_LEADERBOARD:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 32
    sget v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->RC_SHOW_PROFILE:I

    return v0
.end method


# virtual methods
.method public displayAchievement(Landroid/app/Activity;)V
    .locals 1

    .line 225
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$5;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$5;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public displayLeaderboard(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$7;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public hasFriends()Z
    .locals 5

    :try_start_0
    const-string v0, "com.google.android.gms.games.PlayersClient"

    .line 110
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "loadFriends"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 112
    iput-boolean v4, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mHasFriends:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mHasFriends:Z

    return v0
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mAppId:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mWebClientId:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mChannel:Ljava/lang/String;

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "google_web_app_client_id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mWebClientId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", appid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", channel="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mChannel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GooglePGSApi_V2"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GooglePGSApi_V2"

    const-string v1, " start login"

    .line 50
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$1;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public logout(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 132
    sget p3, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->RC_SHOW_SHARING_FRIENDS_CONSENT:I

    if-ne p3, p2, :cond_0

    .line 133
    iget p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mCachedType:I

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mOnQueryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->queryFriendList(Landroid/app/Activity;IZLcom/netease/ntunisdk/google/OnQueryFriendListCallBack;)V

    :cond_0
    return-void
.end method

.method public queryFriendList(Landroid/app/Activity;IZLcom/netease/ntunisdk/google/OnQueryFriendListCallBack;)V
    .locals 7

    .line 139
    iput-object p4, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->mOnQueryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    .line 140
    new-instance v6, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;IZ)V

    invoke-virtual {p0, p1, v6}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public queryMyAccount(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 318
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$9;

    invoke-direct {v0, p0, p2}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$9;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Lcom/netease/ntunisdk/google/CallBack;)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public requestEmailFromGoogleAccount(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "GooglePGSApi_V2"

    const-string v0, "not support requestEmailFromGoogleAccount"

    .line 365
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 366
    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public showProfile(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 341
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/SignInCallback<",
            "Lcom/google/android/gms/games/Player;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGamesSdk;->initialize(Landroid/content/Context;)V

    .line 84
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public updateAchievement(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/ntunisdk/google/CallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 248
    new-instance v6, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;ILandroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V

    invoke-virtual {p0, p1, v6}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public updateEvent(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .line 209
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$4;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public updateRank(Landroid/app/Activity;Ljava/lang/String;DLcom/netease/ntunisdk/google/CallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "D",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 301
    new-instance v7, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Ljava/lang/String;DLcom/netease/ntunisdk/google/CallBack;)V

    invoke-virtual {p0, p1, v7}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method
