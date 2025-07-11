.class Lcom/netease/ntunisdk/SdkCcMoment$WorkerHandler;
.super Landroid/os/Handler;
.source "SdkCcMoment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkCcMoment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerHandler"
.end annotation


# instance fields
.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/SdkCcMoment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/netease/ntunisdk/SdkCcMoment;)V
    .locals 0

    .line 1096
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1097
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/SdkCcMoment$WorkerHandler;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1102
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment$WorkerHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/SdkCcMoment;

    if-nez v0, :cond_0

    const-string p1, "SdkCcMoment"

    const-string v0, "null ref."

    .line 1104
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1107
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1129
    :pswitch_0
    invoke-static {v0}, Lcom/netease/ntunisdk/SdkCcMoment;->access$700(Lcom/netease/ntunisdk/SdkCcMoment;)V

    goto :goto_0

    .line 1125
    :pswitch_1
    invoke-static {v0}, Lcom/netease/ntunisdk/SdkCcMoment;->access$600(Lcom/netease/ntunisdk/SdkCcMoment;)V

    goto :goto_0

    .line 1121
    :pswitch_2
    invoke-static {v0}, Lcom/netease/ntunisdk/SdkCcMoment;->access$500(Lcom/netease/ntunisdk/SdkCcMoment;)V

    goto :goto_0

    .line 1117
    :pswitch_3
    invoke-static {v0}, Lcom/netease/ntunisdk/SdkCcMoment;->access$400(Lcom/netease/ntunisdk/SdkCcMoment;)V

    goto :goto_0

    .line 1113
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/SdkCcMoment;->access$300(Lcom/netease/ntunisdk/SdkCcMoment;I)V

    goto :goto_0

    .line 1109
    :pswitch_5
    invoke-static {v0}, Lcom/netease/ntunisdk/SdkCcMoment;->access$200(Lcom/netease/ntunisdk/SdkCcMoment;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
