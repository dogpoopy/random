.class Lcom/netease/ntunisdk/InstagramShare$4;
.super Ljava/lang/Object;
.source "InstagramShare.java"

# interfaces
.implements Lcom/netease/ntunisdk/FbMediaProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/InstagramShare;->share(Landroid/app/Activity;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkFacebook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$inst:Lcom/netease/ntunisdk/SdkFacebook;

.field final synthetic val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/ShareInfo;Landroid/app/Activity;Lcom/netease/ntunisdk/SdkFacebook;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/netease/ntunisdk/InstagramShare$4;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    iput-object p2, p0, Lcom/netease/ntunisdk/InstagramShare$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/InstagramShare$4;->val$inst:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/netease/ntunisdk/InstagramShare$4;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/ShareInfo;->setVideoUrl(Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/netease/ntunisdk/InstagramShare$4;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/netease/ntunisdk/InstagramShare$4;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    iget-object v0, p0, Lcom/netease/ntunisdk/InstagramShare$4;->val$inst:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-static {p1, p2, v0}, Lcom/netease/ntunisdk/InstagramShare;->share(Landroid/app/Activity;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkFacebook;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/InstagramShare$4;->val$inst:Lcom/netease/ntunisdk/SdkFacebook;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    :goto_0
    return-void
.end method
