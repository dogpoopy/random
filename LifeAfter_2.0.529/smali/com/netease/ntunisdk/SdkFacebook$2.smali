.class Lcom/netease/ntunisdk/SdkFacebook$2;
.super Lcom/facebook/AccessTokenTracker;
.source "SdkFacebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebook;->init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkFacebook;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$2;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$2;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/SdkFacebook;->access$000(Lcom/netease/ntunisdk/SdkFacebook;Lcom/facebook/AccessToken;)V

    return-void
.end method
