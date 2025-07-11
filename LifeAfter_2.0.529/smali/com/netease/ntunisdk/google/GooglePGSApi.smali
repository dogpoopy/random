.class public Lcom/netease/ntunisdk/google/GooglePGSApi;
.super Ljava/lang/Object;
.source "GooglePGSApi.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/Api;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/Api<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# static fields
.field private static final RC_ACHIEVEMENT:I

.field private static final RC_CHECK_ACCOUNT:I

.field private static final RC_LEADERBOARD:I

.field private static final RC_SHOW_PROFILE:I

.field private static final RC_SHOW_SHARING_FRIENDS_CONSENT:I

.field private static final TAG:Ljava/lang/String; = "GooglePGSApi"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mCachedType:I

.field private mChannel:Ljava/lang/String;

.field private final mCheckAccountCallbackList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/netease/ntunisdk/google/SignInCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private mHasFriends:Z

.field private mOnQueryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

.field private mSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field private mWebClientId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, -0x7cc9a929

    .line 43
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_CHECK_ACCOUNT:I

    add-int/lit8 v0, v0, 0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_LEADERBOARD:I

    add-int/lit8 v0, v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_ACHIEVEMENT:I

    add-int/lit8 v0, v0, 0x1

    .line 46
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_SHOW_SHARING_FRIENDS_CONSENT:I

    add-int/lit8 v0, v0, 0x1

    .line 47
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_SHOW_PROFILE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mCheckAccountCallbackList:Ljava/util/LinkedList;

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mCachedType:I

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mHasFriends:Z

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mOnQueryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/google/GooglePGSApi;)Ljava/util/LinkedList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mCheckAccountCallbackList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/google/GooglePGSApi;Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi;->getGoogleSignInClientInstance(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 39
    sget v0, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_CHECK_ACCOUNT:I

    return v0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/google/GooglePGSApi;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mHasFriends:Z

    return p0
.end method

.method static synthetic access$402(Lcom/netease/ntunisdk/google/GooglePGSApi;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mCachedType:I

    return p1
.end method

.method static synthetic access$500()I
    .locals 1

    .line 39
    sget v0, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_SHOW_SHARING_FRIENDS_CONSENT:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 39
    sget v0, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_ACHIEVEMENT:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 39
    sget v0, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_LEADERBOARD:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 39
    sget v0, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_SHOW_PROFILE:I

    return v0
.end method

.method private executeAndClearCheckAccountCallbacks(Landroid/content/Intent;)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mCheckAccountCallbackList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 191
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {v1, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UIN"

    invoke-interface {p1, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SESSION"

    invoke-interface {p1, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USER_ID"

    invoke-interface {p1, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USR_NAME"

    invoke-interface {p1, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UEMAIL"

    invoke-interface {p1, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mCheckAccountCallbackList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/google/SignInCallback;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 209
    invoke-interface {v2, v0}, Lcom/netease/ntunisdk/google/SignInCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-interface {v2}, Lcom/netease/ntunisdk/google/SignInCallback;->onFailed()V

    goto :goto_0

    .line 214
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mCheckAccountCallbackList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_4
    return-void
.end method

.method private getGoogleSignInClientInstance(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->getSignInOptionsInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    return-object p1
.end method

.method private getSignInOptionsInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 7

    .line 59
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-nez v0, :cond_1

    .line 61
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 63
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/gms/common/api/Scope;

    const-string v6, "profile"

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 66
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mWebClientId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mWebClientId:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mWebClientId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mWebClientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 70
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-object v0
.end method


# virtual methods
.method public displayAchievement(Landroid/app/Activity;)V
    .locals 1

    .line 326
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSApi$6;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi$6;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Landroid/app/Activity;)V

    .line 355
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

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

    .line 386
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSApi$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/google/GooglePGSApi$8;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V

    .line 417
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public hasFriends()Z
    .locals 5

    :try_start_0
    const-string v0, "com.google.android.gms.games.PlayersClient"

    .line 146
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

    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 148
    iput-boolean v4, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mHasFriends:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :catchall_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mHasFriends:Z

    return v0
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mAppId:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mWebClientId:Ljava/lang/String;

    .line 158
    iput-object p4, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mChannel:Ljava/lang/String;

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "google_web_app_client_id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mWebClientId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", appid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", channel="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mChannel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GooglePGSApi"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->getSignInOptionsInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSApi$1;

    invoke-direct {v0, p0, p2}, Lcom/netease/ntunisdk/google/GooglePGSApi$1;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Lcom/netease/ntunisdk/google/CallBack;)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public logout(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 1
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

    .line 165
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi;->getGoogleSignInClientInstance(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSApi$3;

    invoke-direct {v0, p0, p2}, Lcom/netease/ntunisdk/google/GooglePGSApi$3;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Lcom/netease/ntunisdk/google/CallBack;)V

    .line 166
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 181
    sget p3, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_CHECK_ACCOUNT:I

    if-ne p3, p2, :cond_0

    .line 182
    invoke-direct {p0, p4}, Lcom/netease/ntunisdk/google/GooglePGSApi;->executeAndClearCheckAccountCallbacks(Landroid/content/Intent;)V

    goto :goto_0

    .line 183
    :cond_0
    sget p3, Lcom/netease/ntunisdk/google/GooglePGSApi;->RC_SHOW_SHARING_FRIENDS_CONSENT:I

    if-ne p3, p2, :cond_1

    .line 184
    iget p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mCachedType:I

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mOnQueryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/google/GooglePGSApi;->queryFriendList(Landroid/app/Activity;IZLcom/netease/ntunisdk/google/OnQueryFriendListCallBack;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public queryFriendList(Landroid/app/Activity;IZLcom/netease/ntunisdk/google/OnQueryFriendListCallBack;)V
    .locals 8

    const-string v0, "GooglePGSApi"

    const-string v1, "queryFriendList"

    .line 220
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-boolean v1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mHasFriends:Z

    if-nez v1, :cond_0

    const-string v1, "no friends api"

    .line 222
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    iput-object p4, p0, Lcom/netease/ntunisdk/google/GooglePGSApi;->mOnQueryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    .line 225
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/netease/ntunisdk/google/GooglePGSApi$4;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Landroid/app/Activity;Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;IZ)V

    .line 302
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

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

    .line 445
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSApi$10;

    invoke-direct {v0, p0, p2}, Lcom/netease/ntunisdk/google/GooglePGSApi$10;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Lcom/netease/ntunisdk/google/CallBack;)V

    .line 469
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

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

    .line 505
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSApi$12;

    invoke-direct {v0, p0, p2}, Lcom/netease/ntunisdk/google/GooglePGSApi$12;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Lcom/netease/ntunisdk/google/CallBack;)V

    .line 522
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

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

    .line 474
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSApi$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/google/GooglePGSApi$11;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V

    .line 500
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/SignInCallback<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GooglePGSApi"

    const-string v1, "checkAccount"

    .line 104
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->getSignInOptionsInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopeArray()[Lcom/google/android/gms/common/api/Scope;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 108
    invoke-interface {p2, v0}, Lcom/netease/ntunisdk/google/SignInCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 112
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi;->getGoogleSignInClientInstance(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->silentSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/google/GooglePGSApi$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi$2;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Lcom/netease/ntunisdk/google/SignInCallback;Landroid/app/Activity;)V

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

    .line 360
    new-instance v6, Lcom/netease/ntunisdk/google/GooglePGSApi$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/google/GooglePGSApi$7;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Lcom/netease/ntunisdk/google/CallBack;ILandroid/app/Activity;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, p1, v6}, Lcom/netease/ntunisdk/google/GooglePGSApi;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method

.method public updateEvent(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .line 307
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSApi$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/google/GooglePGSApi$5;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Landroid/app/Activity;Ljava/lang/String;I)V

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

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

    .line 422
    new-instance v7, Lcom/netease/ntunisdk/google/GooglePGSApi$9;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/google/GooglePGSApi$9;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Landroid/app/Activity;Ljava/lang/String;DLcom/netease/ntunisdk/google/CallBack;)V

    .line 440
    invoke-virtual {p0, p1, v7}, Lcom/netease/ntunisdk/google/GooglePGSApi;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V

    return-void
.end method
