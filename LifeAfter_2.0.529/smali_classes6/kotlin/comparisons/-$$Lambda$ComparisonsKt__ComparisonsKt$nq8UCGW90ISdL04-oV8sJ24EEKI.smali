.class public final synthetic Lkotlin/comparisons/-$$Lambda$ComparisonsKt__ComparisonsKt$nq8UCGW90ISdL04-oV8sJ24EEKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:[Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>([Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/comparisons/-$$Lambda$ComparisonsKt__ComparisonsKt$nq8UCGW90ISdL04-oV8sJ24EEKI;->f$0:[Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lkotlin/comparisons/-$$Lambda$ComparisonsKt__ComparisonsKt$nq8UCGW90ISdL04-oV8sJ24EEKI;->f$0:[Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->lambda$nq8UCGW90ISdL04-oV8sJ24EEKI([Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
