.class Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback$1;
.super Ljava/lang/Object;
.source "SdkTwitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->success(Lcom/twitter/sdk/android/core/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback$1;->this$1:Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback$1;->this$1:Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback$1;->this$1:Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->access$300(Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback$1;->this$1:Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;

    invoke-static {v2}, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->access$400(Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback$1;->this$1:Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;

    invoke-static {v3}, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->access$500(Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/SdkTwitter;->access$600(Lcom/netease/ntunisdk/SdkTwitter;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
