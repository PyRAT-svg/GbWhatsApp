.class public LX/2pd;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic A00:LX/3FR;


# direct methods
.method public constructor <init>(LX/3FR;)V
    .locals 0

    iput-object p1, p0, LX/2pd;->A00:LX/3FR;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, LX/2pd;->A00:LX/3FR;

    invoke-virtual {v0}, LX/3Ba;->A00()V

    return-void
.end method
