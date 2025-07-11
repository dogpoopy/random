.class Lcom/netease/ntunisdk/SdkFacebook$6;
.super Ljava/lang/Object;
.source "SdkFacebook.java"

# interfaces
.implements Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebook;->share2Facebook(Lcom/netease/ntunisdk/base/ShareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkFacebook;

.field final synthetic val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$6;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkFacebook$6;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/login/LoginResult;)V
    .locals 1

    .line 521
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$6;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook$6;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->access$400(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void
.end method
