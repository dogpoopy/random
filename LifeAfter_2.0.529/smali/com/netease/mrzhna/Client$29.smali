.class Lcom/netease/mrzhna/Client$29;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Client;->setBrightness(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Client;

.field final synthetic val$b:F


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Client;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2885
    iput-object p1, p0, Lcom/netease/mrzhna/Client$29;->this$0:Lcom/netease/mrzhna/Client;

    iput p2, p0, Lcom/netease/mrzhna/Client$29;->val$b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 2889
    iget v2, p0, Lcom/netease/mrzhna/Client$29;->val$b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setBrightness"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    iget v1, p0, Lcom/netease/mrzhna/Client$29;->val$b:F

    const-string v2, "screen_brightness_mode"

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 2892
    iget-object v0, p0, Lcom/netease/mrzhna/Client$29;->this$0:Lcom/netease/mrzhna/Client;

    invoke-virtual {v0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2896
    iget-object v0, p0, Lcom/netease/mrzhna/Client$29;->this$0:Lcom/netease/mrzhna/Client;

    invoke-virtual {v0}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/netease/mrzhna/Client$29;->val$b:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2900
    :cond_0
    iget-object v1, p0, Lcom/netease/mrzhna/Client$29;->this$0:Lcom/netease/mrzhna/Client;

    invoke-virtual {v1}, Lcom/netease/mrzhna/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
