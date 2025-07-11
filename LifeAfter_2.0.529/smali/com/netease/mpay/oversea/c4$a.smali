.class Lcom/netease/mpay/oversea/c4$a;
.super Ljava/lang/Object;
.source "HuaWeiApi.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/c4;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnCompleteListener<",
        "Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/c4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/c4$a;->a:Lcom/netease/mpay/oversea/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/huawei/hmf/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/c4$a;->a:Lcom/netease/mpay/oversea/c4;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/c4;->a(Lcom/netease/mpay/oversea/c4;Lcom/huawei/hmf/tasks/Task;)V

    return-void
.end method
