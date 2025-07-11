.class public final synthetic Lcom/facebook/login/-$$Lambda$LoginFragment$AuKgNgbMUkx-t3fWupvS_XG7Kxw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field private final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/-$$Lambda$LoginFragment$AuKgNgbMUkx-t3fWupvS_XG7Kxw;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/-$$Lambda$LoginFragment$AuKgNgbMUkx-t3fWupvS_XG7Kxw;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/facebook/login/LoginFragment;->lambda$AuKgNgbMUkx-t3fWupvS_XG7Kxw(Lkotlin/jvm/functions/Function1;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
