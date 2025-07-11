.class Lcom/netease/ntunisdk/SdkFacebook$13$2;
.super Ljava/lang/Object;
.source "SdkFacebook.java"

# interfaces
.implements Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebook$13;->onCompleted(Lcom/facebook/GraphResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/SdkFacebook$13;

.field final synthetic val$cb:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook$13;Lcom/facebook/GraphRequest$Callback;)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$13$2;->this$1:Lcom/netease/ntunisdk/SdkFacebook$13;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkFacebook$13$2;->val$cb:Lcom/facebook/GraphRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/login/LoginResult;)V
    .locals 6

    .line 1124
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string p1, "limit"

    const/16 v0, 0x1388

    .line 1125
    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1126
    new-instance p1, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkFacebook$13$2;->val$cb:Lcom/facebook/GraphRequest$Callback;

    const-string v2, "/me/invitable_friends"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method
