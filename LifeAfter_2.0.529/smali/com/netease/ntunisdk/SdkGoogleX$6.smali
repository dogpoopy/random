.class Lcom/netease/ntunisdk/SdkGoogleX$6;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendList(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$6;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;I)V"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$6;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v0, p1, p2}, Lcom/netease/ntunisdk/SdkGoogleX;->access$000(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/util/List;I)V

    return-void
.end method
