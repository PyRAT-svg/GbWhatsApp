.class public final synthetic LX/0ew;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:Lcom/gbwhatsapq/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gbwhatsapq/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/0ew;->A00:Lcom/gbwhatsapq/HomeActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v2, p0, LX/0ew;->A00:Lcom/gbwhatsapq/HomeActivity;

    iget v1, v2, Lcom/gbwhatsapq/HomeActivity;->A0x:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    invoke-virtual {v2}, Lcom/gbwhatsapq/HomeActivity;->A0l()V

    :cond_0
    return-void
.end method
