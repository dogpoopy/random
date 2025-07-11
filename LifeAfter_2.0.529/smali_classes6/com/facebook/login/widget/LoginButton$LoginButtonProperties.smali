.class Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
.super Ljava/lang/Object;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoginButtonProperties"
.end annotation


# instance fields
.field private authType:Ljava/lang/String;

.field private defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private messengerPageId:Ljava/lang/String;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resetMessengerState:Z

.field private shouldSkipAccountDeduplication:Z

.field private targetApp:Lcom/facebook/login/LoginTargetApp;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 139
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    const-string v0, "rerequest"

    .line 140
    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authType:Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/facebook/login/LoginTargetApp;->FACEBOOK:Lcom/facebook/login/LoginTargetApp;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->targetApp:Lcom/facebook/login/LoginTargetApp;

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->shouldSkipAccountDeduplication:Z

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearPermissions()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-void
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method public getLoginTargetApp()Lcom/facebook/login/LoginTargetApp;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->targetApp:Lcom/facebook/login/LoginTargetApp;

    return-object v0
.end method

.method public getMessengerPageId()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->messengerPageId:Ljava/lang/String;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getResetMessengerState()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->resetMessengerState:Z

    return v0
.end method

.method public getShouldSkipAccountDeduplication()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->shouldSkipAccountDeduplication:Z

    return v0
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authType:Ljava/lang/String;

    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/login/DefaultAudience;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-void
.end method

.method public setLoginTargetApp(Lcom/facebook/login/LoginTargetApp;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->targetApp:Lcom/facebook/login/LoginTargetApp;

    return-void
.end method

.method public setMessengerPageId(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->messengerPageId:Ljava/lang/String;

    return-void
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-void
.end method

.method public setResetMessengerState(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->resetMessengerState:Z

    return-void
.end method

.method protected setShouldSkipAccountDeduplication(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->shouldSkipAccountDeduplication:Z

    return-void
.end method
