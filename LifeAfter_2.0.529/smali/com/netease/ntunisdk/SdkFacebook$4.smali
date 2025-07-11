.class Lcom/netease/ntunisdk/SdkFacebook$4;
.super Ljava/lang/Object;
.source "SdkFacebook.java"

# interfaces
.implements Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebook;->getMyInfo(ZLcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkFacebook;

.field final synthetic val$callback:Lcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;

.field final synthetic val$isLogin:Z


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook;ZLcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$4;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/SdkFacebook$4;->val$isLogin:Z

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkFacebook$4;->val$callback:Lcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/login/LoginResult;)V
    .locals 3

    .line 284
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/SdkFacebook$4$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkFacebook$4$1;-><init>(Lcom/netease/ntunisdk/SdkFacebook$4;Lcom/facebook/login/LoginResult;)V

    .line 283
    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "id,name,email,hometown,likes,picture.height(200).width(200)"

    .line 328
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 330
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method
